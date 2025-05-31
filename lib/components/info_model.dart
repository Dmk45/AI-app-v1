import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_streaming.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'info_widget.dart' show InfoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoModel extends FlutterFlowModel<InfoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (paycheckout session)] action in RichTextSpan widget.
  ApiCallResponse? action;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
