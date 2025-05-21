from fastapi import FastAPI
from fastapi.responses import StreamingResponse
import google.generativeai as genai
from pymongo import MongoClient
genai.configure(api_key='AIzaSyB1R-cigon2B9Q6-DNGDBjMXKFhOxAqwPs')
Ymodel = genai.GenerativeModel('gemini-1.5-pro-latest', system_instruction="You determine weather a task requires a google search or not, only answer Yes or No")
import vertexai
from vertexai.generative_models import (
    GenerationConfig,
    GenerativeModel as Vmodel,
    Tool,
    Content,
    Part,
    grounding,
)
import anthropic
project_id = "------"
anthropic_key= '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'
vertexai.init(project=project_id, location="us-central1")


app = FastAPI()







def mongo(username: str, messa, model):
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    client = MongoClient(uri)
    # returns history for genai and claude, adds history for vertex
    try:
        

        database = client.get_database('history')
        collection = database[username + model]
        # if there no message is inputed return the content of the  n.  
        if len(messa) == 0:
            mess = []
            all_restaurants = collection.find({}, {"_id": 0})
            # the id: 0 means dont return the id adding anything else to that feild does the same for that specific feild
            for restaurant in all_restaurants:
                mess.append(restaurant)

            return mess

        

        
        # if there is a message inputed return the content of the collection and add the new contents 
        if len(messa) != 0:  
            mess = []
            collection.insert_many(messa)
            all_restaurants = collection.find({}, {"_id": 0})
            for restaurant in all_restaurants:
                mess.append(restaurant) 
            return mess
        
        client.close()4
    except Exception as e:
        raise Exception("Unable to find the document due to the following error: ", e)


def mongo_add_data(username: str, messa, model):
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    #adds web scraping data genai
    client = MongoClient(uri)
    try:
    
        database = client.get_database('history')
        collection = database[username + model + 'data']
        collection.insert_one({"data": messa})
        client.close()
    except Exception as e:
        raise Exception("Unable to find the document due to the following error: ", e)


def mongo_find_data(username: str, model):
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    #find web scarping data genai
    client = MongoClient(uri)
    try:
        
        database = client.get_database('history')
        mess = []

        collection = database[username + model + 'data']
        all_restaurants = collection.find({}, {"_id": 0})
        for restaurant in all_restaurants:
            mess.append(restaurant['data'])
        info = ''.join(mess)


        return info




    
        client.close()
    except Exception as e:
        raise Exception("Unable to find the document due to the following error: ", e)
    


async def scraper(tusk):
    #scarper for google genai
    tool = Tool.from_google_search_retrieval(grounding.GoogleSearchRetrieval())
    model =  Vmodel('gemini-1.5-flash-001')
    response = model.generate_content(tusk, tools=[tool], generation_config=GenerationConfig(temperature=0.0,))
    return response.text



def rolefind(username: str, model: str):
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    #same as part finder but for roles
    client = MongoClient(uri)
    try:
        
        database = client.get_database('history')

        mess2 =[]
        

        collection = database[username + model]
        roles = collection.find({}, {"role": 1, "_id": 0})
        for role in roles:
            mess2.append(role['role'])
        
        return mess2
    
        client.close()
    except Exception as e:
        raise Exception("Unable to find the document due to the following error: ", e)

def count(username: str, model: str):
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    #counts documents so the content function knows how much to contenize
    client = MongoClient(uri)
    try:
        
        database = client.get_database('history')
        collection = database[username + model]
        count = collection.count_documents({})
        return count
        client.close()
    except Exception as e:
        raise Exception("Unable to find the document due to the following error: ", e)

def partsfind(username: str, model):
    #find the part object for any role in mongodb
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    client = MongoClient(uri)
    try:
        
        database = client.get_database('history')
        mess = []

        

        collection = database[username + model]
        parts = collection.find({}, {"parts": 1, "_id": 0})
        #returns only what is stored in part object excluding the parts label
        for part in parts:
            mess.append(part['parts'])

        
        mess = sum(mess, [])
        return mess
    
        client.close()
    except Exception as e:
        raise Exception("Unable to find the document due to the following error: ", e)

def content(role, text, count):
    #inputs the history data into vertex ai content schema
    scaler = 0
    content_list = []
    for i in range(count):
        balls = Content(role=role[scaler], parts=[Part.from_text(text[scaler])])
        content_list.append(balls)
        scaler += 1
    return content_list

def palm(q: str, username: str, modeltype: str):
    Y_or_N = Ymodel.generate_content(f'{q}')
    messages = []
    import asyncio
    if "Yes" in Y_or_N.text:
        # extraxcts data from web
        data = asyncio.run(scraper(q))
        mongo_add_data(username=username, messa=data, model=modeltype)
        # add data to mongodb
        info = mongo_find_data(username=username, model=modeltype)
        #retreive data from mongodb
        model =  genai.GenerativeModel('gemini-1.5-pro-latest', system_instruction=f'you will use the information provided to complete a task given by the user do not reveal that you used outside info {info}')
        chat = model.start_chat(history=mongo(username=username, messa=messages, model=modeltype))
        chat
        response = chat.send_message(q, stream=True)
        for chunk in response:
            yield str(chunk.text)
        messages.append({'role':'user', 'parts': [q]})
        messages.append({'role':'model', 'parts': [response.text]})
        mongo(username=username, messa=messages, model=modeltype)

    else:
        info = mongo_find_data(username=username, model=modeltype)
        model =  genai.GenerativeModel('gemini-1.5-pro-latest', system_instruction=f'you will use the information provided to complete a task given by the user do not reveal that you used outside info {info}')
        chat = model.start_chat(history=mongo(username=username, messa=messages, model=modeltype))
        chat
        response = chat.send_message(q)
        for chunk in response:
            yield str(chunk.text) 
        messages.append({'role':'user', 'parts': [q]})
        messages.append({'role':'model', 'parts': [response.text]})
        mongo(username=username, messa=messages, model=modeltype)

@app.get("/palm/")
def read_item(q: str, username: str, model: str):
    return StreamingResponse(palm(q, username, model), media_type="text/plain")





def vertex(q, username: str, modeltype: str):
    partsfinder = partsfind(username=username, model=modeltype)
    rolefinder = rolefind(username=username, model=modeltype)
    history = content(rolefinder, partsfinder, count=count(username=username, model=modeltype))
    messages = []
    tool = Tool.from_google_search_retrieval(grounding.GoogleSearchRetrieval())
    model = Vmodel(modeltype)
    chat = model.start_chat(history=history, response_validation=False)
    chat
    repo = []
    full_response = []
    response = chat.send_message(q, tools=[tool], generation_config=GenerationConfig(temperature=0.0), stream=True)
    try: 
        
        for chunk in response:
            repo.append(chunk.text)
            repos = ' '.join(repo)
            full_response.append(chunk.text)
            yield repos
            repo.clear()

    except ValueError as e:
        x = 0
    full_response = ' '.join(full_response)
    messages.append({'role':'user', 'parts': q})
    messages.append({'role':'model', 'parts': full_response})
    mongo(username=username, messa=messages, model=modeltype)


def anthropi(q: str, username: str, modeltype: str):
    client = anthropic.Anthropic(
    api_key=anthropic_key
    )
    history = mongo(username=username, messa=[], model=modeltype)
    history.append({"role": "user", "content": q})
    messages = []
    tool = Tool.from_google_search_retrieval(grounding.GoogleSearchRetrieval())
    repo = []
    full_response = []
    try: 
        with client.messages.stream(
            max_tokens=1024,
            messages=history,
            model=modeltype,
            ) as stream:
            for text in stream.text_stream:
                repo.append(text)
                repos = ' '.join(repo)
                full_response.append(text)
                yield repos
                repo.clear()


    except ValueError as e:
        x = 0
    full_response = ' '.join(full_response)
    messages.append({"role": "user", "content": q})
    messages.append({'role':'assistant', 'content': full_response})
    mongo(username=username, messa=messages, model=modeltype)




def Openai(q: str, username: str, modeltype: str):
    from openai import OpenAI
    client = OpenAI()

    history = mongo(username=username, messa=[], model=modeltype)
    history.append({"role": "user", "content": q})
    messages = []
    tool = Tool.from_google_search_retrieval(grounding.GoogleSearchRetrieval())
    repo = []
    full_response = []
    #try: 
    completion = client.chat.completions.create(
        model=modeltype,
        messages=history,
            stream=True
            )
    for chunk in completion:
        if chunk.choices[0].delta.content is not None:
            yield chunk.choices[0].delta.content
    #except ValueError as e:
        #x = 0
    full_response = ' '.join(full_response)
    messages.append({"role": "user", "content": q})
    messages.append({'role':'assistant', 'content': full_response})
    mongo(username=username, messa=messages, model=modeltype)


@app.get("/openai/")
async def read_item(q: str, username: str, model: str):
    return StreamingResponse(Openai(q, username, model), media_type="text/plain")
    #return(Openai(q, username, model))

@app.get("/anthropic/")
async def read_item(q: str, username: str, model: str):
    return StreamingResponse(anthropi(q, username, model), media_type="text/plain")


@app.get("/vertex/")
async def read_item(q, username: str, model: str):
    return StreamingResponse(vertex(q, username, model), media_type="text/plain")





@app.get("/clear/")
def clear(username: str, model):
    uri = "mongodb+srv://thimat:wdVqp4FXj39alSFX@history.3ahrhra.mongodb.net/?retryWrites=true&w=majority&appName=history"
    client = MongoClient(uri)
    database = client.get_database('history') 
    database[username + model].drop()
    database[username + model + 'data'].drop()


@app.get("/retrieve/")
async def read_item(username: str, model: str):
    history = mongo(username=username, messa=[], model=model)
    return history
