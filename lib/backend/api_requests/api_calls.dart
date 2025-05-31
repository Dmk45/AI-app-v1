import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ai response Group Code

class AiResponseGroup {
  static String getBaseUrl() => 'https://oneoutersquido-2fzp7.kinsta.app';
  static Map<String, String> headers = {};
  static VertexCall vertexCall = VertexCall();
  static OpenaiCall openaiCall = OpenaiCall();
  static AnthropicCall anthropicCall = AnthropicCall();
  static ClearCall clearCall = ClearCall();
  static GeminitwoCall geminitwoCall = GeminitwoCall();
  static OpenaitCall openaitCall = OpenaitCall();
}

class VertexCall {
  Future<ApiCallResponse> call({
    String? q = '',
    String? username = '',
    String? model = '',
    String? chatId = '',
  }) async {
    final baseUrl = AiResponseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'vertex',
      apiUrl: '${baseUrl}/vertex/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'username': username,
        'model': model,
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }
}

class OpenaiCall {
  Future<ApiCallResponse> call({
    String? q = '',
    String? username = '',
    String? model = '',
    String? chatId = '',
  }) async {
    final baseUrl = AiResponseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'openai',
      apiUrl: '${baseUrl}/openai/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'username': username,
        'model': model,
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }
}

class AnthropicCall {
  Future<ApiCallResponse> call({
    String? q = '',
    String? username = '',
    String? model = '',
    String? chatId = '',
  }) async {
    final baseUrl = AiResponseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'anthropic',
      apiUrl: '${baseUrl}/anthropic/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'username': username,
        'model': model,
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }
}

class ClearCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? model = '',
    String? chatId = '',
  }) async {
    final baseUrl = AiResponseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'clear',
      apiUrl: '${baseUrl}/clear/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'username': username,
        'model': model,
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GeminitwoCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? username = '',
    String? q = '',
    String? chatId = '',
  }) async {
    final baseUrl = AiResponseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'geminitwo',
      apiUrl: '${baseUrl}/genai/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'username': username,
        'model': model,
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }
}

class OpenaitCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiResponseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'openait',
      apiUrl: '${baseUrl}/openai/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': "hello",
        'username': "gronk",
        'model': "gpt-4o",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ai response Group Code

class CreateCustomerCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCustomerCall',
        'variables': {
          'email': email,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? cusid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class PaycheckoutSessionCall {
  static Future<ApiCallResponse> call({
    String? lineItems = '',
    String? customer = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PaycheckoutSessionCall',
        'variables': {
          'lineItems': lineItems,
          'customer': customer,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class MeterEventCall {
  static Future<ApiCallResponse> call({
    String? eventName = '',
    String? payloadValue = '',
    String? payloadStripeCustomerId = '',
    String? timestamp = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'MeterEventCall',
        'variables': {
          'eventName': eventName,
          'payloadValue': payloadValue,
          'payloadStripeCustomerId': payloadStripeCustomerId,
          'timestamp': timestamp,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreatesubCall {
  static Future<ApiCallResponse> call({
    String? customer = '',
    String? price = '',
    String? defaultPaymentMethod = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreatesubCall',
        'variables': {
          'customer': customer,
          'price': price,
          'defaultPaymentMethod': defaultPaymentMethod,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class DeletecusCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeletecusCall',
        'variables': {
          'customerId': customerId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetcusCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetcusCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetpaymentCall {
  static Future<ApiCallResponse> call({
    String? customer = '',
    String? type = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetpaymentCall',
        'variables': {
          'customer': customer,
          'type': type,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
}

class ChatgptCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
    "model": "gpt-4o-mini",
    "messages": [
        {
            "role": "system",
            "content": "You are a helpful assistant."
        },
        {
            "role": "user",
            "content": "explain calculas"
        }
    ],
"stream": true
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'chatgpt',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
