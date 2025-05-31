const axios = require("axios").default;
const qs = require("qs");

async function _createCustomerCall(context, ffVariables) {
  var email = ffVariables["email"];

  var url = `https://api.stripe.com/v1/customers`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = { email: email };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _paycheckoutSessionCall(context, ffVariables) {
  var lineItems = ffVariables["lineItems"];
  var customer = ffVariables["customer"];

  var url = `https://api.stripe.com/v1/checkout/sessions`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = {
    "payment_method_types[]": `card`,
    "line_items[0][price]": lineItems,
    mode: `subscription`,
    success_url: `https://basily.flutterflow.app/chat`,
    cancel_url: `https://basily.flutterflow.app/`,
    customer: customer,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _meterEventCall(context, ffVariables) {
  var eventName = ffVariables["eventName"];
  var payloadValue = ffVariables["payloadValue"];
  var payloadStripeCustomerId = ffVariables["payloadStripeCustomerId"];
  var timestamp = ffVariables["timestamp"];

  var url = `https://api.stripe.com/v1/billing/meter_events`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = {
    event_name: eventName,
    "payload[value]": payloadValue,
    "payload[stripe_customer_id]": payloadStripeCustomerId,
    timestamp: timestamp,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _createsubCall(context, ffVariables) {
  var customer = ffVariables["customer"];
  var price = ffVariables["price"];
  var defaultPaymentMethod = ffVariables["defaultPaymentMethod"];

  var url = `https://api.stripe.com/v1/subscriptions`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = {
    customer: customer,
    "items[0][price]": price,
    default_payment_method: defaultPaymentMethod,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _deletecusCall(context, ffVariables) {
  var customerId = ffVariables["customerId"];

  var url = `https://api.stripe.com/v1/customers/${customerId}`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "delete",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _getcusCall(context, ffVariables) {
  var url = `https://api.stripe.com/v1/customers`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _getpaymentCall(context, ffVariables) {
  var customer = ffVariables["customer"];
  var type = ffVariables["type"];

  var url = `https://api.stripe.com/v1/payment_methods`;
  var headers = {
    Authorization: `Bearer sk_test_51P3fgqK3lgxttV213TuiNsHhmhJX6wzGut1H2t60fHZmihRWQ1SFC8Dec7wQAH3ryxXB6cKtwf0MX70gCH9x8DmL00fMpCcGjC`,
  };
  var params = { customer: customer, type: type };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    CreateCustomerCall: _createCustomerCall,
    PaycheckoutSessionCall: _paycheckoutSessionCall,
    MeterEventCall: _meterEventCall,
    CreatesubCall: _createsubCall,
    DeletecusCall: _deletecusCall,
    GetcusCall: _getcusCall,
    GetpaymentCall: _getpaymentCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}
function escapeStringForJson(val) {
  if (typeof val !== "string") {
    return val;
  }
  return val
    .replace(/[\\]/g, "\\\\")
    .replace(/["]/g, '\\"')
    .replace(/[\n]/g, "\\n")
    .replace(/[\t]/g, "\\t");
}

module.exports = { makeApiCall };
