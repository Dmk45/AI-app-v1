

import numpy as np
import random




class nusa:
    def __init__(self, layernumber, input, training_data, weightarray=np.array([]), biasarray=np.array([])):
        self.layernumber = layernumber
        self.input = input
        self.weightarray = weightarray
        self.biasarray = biasarray
    def begin(self):
        layer1 = self.inputlayer()
        layer2 = self.layer(10, layer1)
        layer3 = self.layer(10, layer2)
        layer4 = self.layer(10, layer3)
        layer5 = self.layer(10, layer4)
        layer6 = self.layer(10, layer5)
        layer7 = self.layer(10, layer6)
        layer8 = self.layer(12, layer7)
        output = self.outputlayer(layer8)
        training_data = self.training_data
        print(output)




    def inputlayer(self):
        output = np.array([])
        for i in range (len(self.input)):
            scaler = 0
            output = np.append(output, self.neuron(input=self.input[scaler]))
            scaler += 1
        return output

    def layer(self, nuronnumber, input):
        output = np.array([])
        if len(input) < nuronnumber:
            x = nuronnumber - len(input)
            for i in range(x):
                input = np.append(input, i)
            
        for i in range (nuronnumber):
            scaler2 = 1
            output = np.append(output, self.neuron(input=self.input[scaler2]))
            scaler2 += 1
        return output

    def neuron(self, input, passn):
        if passn >= 1:
            weight = random.randint(0, 1) * 0.8548741055637802
            bias = random.randint(0, 1)
            np.append(self.weightarray, weight)
            np.append(self.biasarray, bias)
        else:
            np.append

        transfer = (weight * input)
        transfer = (transfer + bias)
        transfer = self.sigmoid(transfer)
        return transfer
    def outputlayer(self, input):
        array = input
        array_size = len(array)
        slice1 = array[:array_size//2] 
        slice2 = array[array_size//4:array_size//4*3]  
        slice3 = array[array_size//2:]  
        dot_product_1 = np.dot(slice1, slice1)
        dot_product_2 = np.dot(slice2, slice2)
        dot_product_3 = np.dot(slice3, slice3)
        output = np.array([])
        output = np.append(output, self.neuron(input=dot_product_1))
        output = np.append(output, self.neuron(input=dot_product_2))
        output = np.append(output, self.neuron(input=dot_product_3))
        dot_products_array = np.array([dot_product_1, dot_product_2, dot_product_3])
        output = self.softmax(dot_products_array)
        return output
    def optimzer(self):
        loss = self.loss()
        

        
    def loss(self, y_true, y_pred):

        epsilon = 1e-15  # Small value to avoid division by zero
        y_pred = np.clip(y_pred, epsilon, 1 - epsilon)  # Clip values to avoid log(0)
        return -np.mean(y_true * np.log(y_pred) + (1 - y_true) * np.log(1 - y_pred))



    def sigmoid(self, x):
        return 1 / (1 + np.exp(-x))
    def softmax(self, x):
        exp_x = np.exp(x - np.max(x))  # Subtracting max(x) for numerical stability
    # Compute the softmax values
        return exp_x / np.sum(exp_x)


inputarr = np.array([1, 2, 3, 4, 5])
cow = nusa(5, inputarr)
cow.begin()





