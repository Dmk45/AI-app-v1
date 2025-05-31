import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/api_requests/api_streaming.dart';
import '/backend/backend.dart';
import '/backend/gemini/gemini.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

Future countandcharge(
  BuildContext context, {
  String? output,
}) async {
  String? hol;
  String? toka;
  ApiCallResponse? apiResult2;

  await geminiCountTokens(
    context,
    output!,
  ).then((generatedText) {
    hol = generatedText;
  });

  await geminiCountTokens(
    context,
    FFAppState().currentrepo,
  ).then((generatedText) {
    toka = generatedText;
  });

  apiResult2 = await MeterEventCall.call(
    eventName: () {
      if (FFAppState().modelsize == 'gemini-1.5-flash') {
        return 'gemini_1.5_flash_input_before_128_context_window';
      } else if (FFAppState().modelsize == 'gemini-1.5-pro') {
        return 'gemini_1.5_pro_input_before_128_context';
      } else if (FFAppState().modelsize == 'gpt-4o') {
        return 'gpt-4o_input';
      } else if (FFAppState().modelsize == 'gpt-4o-mini') {
        return 'gpt-4o-mini_input';
      } else if (FFAppState().modelsize == 'Claude 3.5 Sonnet') {
        return 'claude_3.5_sonnet_input';
      } else if (FFAppState().modelsize == 'Claude 3.5 Haiku') {
        return 'claude_3.5_haiku_input';
      } else if (FFAppState().modelsize == 'Claude 3 Opus') {
        return 'claude_3_opus_input';
      } else if (FFAppState().modelsize == 'Gemini 2.0 Flash') {
        return 'gemini-2.0-flash-input';
      } else {
        return 'gemini-2.0-flash-input';
      }
    }(),
    payloadValue: toka,
    payloadStripeCustomerId:
        valueOrDefault(currentUserDocument?.customerId, ''),
    timestamp: getCurrentTimestamp.secondsSinceEpoch.toString(),
  );

  await MeterEventCall.call(
    eventName: () {
      if (FFAppState().modelsize == 'gemini-1.5-flash') {
        return 'gemini_1.5_flash_input_before_128_context_window';
      } else if (FFAppState().modelsize == 'gemini-1.5-pro') {
        return 'gemini_1.5_pro_output_before_128_context';
      } else if (FFAppState().modelsize == 'gpt-4o') {
        return 'gpt-4o_output';
      } else if (FFAppState().modelsize == 'gpt-4o-mini') {
        return 'gpt-4o-mini_output';
      } else if (FFAppState().modelsize == 'Claude 3.5 Sonnet') {
        return 'claude_3.5_sonnet_output';
      } else if (FFAppState().modelsize == 'Claude 3.5 Haiku') {
        return 'claude_3.5_haiku_output';
      } else if (FFAppState().modelsize == 'Claude 3 Opus') {
        return 'claude_3_opus_output';
      } else if (FFAppState().modelsize == 'Gemini 2.0 Flash') {
        return 'gemini-2.0-flash-output';
      } else {
        return 'base_token';
      }
    }(),
    payloadValue: hol,
    payloadStripeCustomerId:
        valueOrDefault(currentUserDocument?.customerId, ''),
    timestamp: getCurrentTimestamp.secondsSinceEpoch.toString(),
  );
}
