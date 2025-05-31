import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_streaming.dart';
import '/backend/schema/structs/index.dart';
import '/components/mouse_widget.dart';
import '/components/sett_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'create_account3_copy_copy_widget.dart'
    show CreateAccount3CopyCopyWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CreateAccount3CopyCopyModel
    extends FlutterFlowModel<CreateAccount3CopyCopyWidget> {
  ///  Local state fields for this page.

  bool opeaned = false;

  bool opeaned2 = false;

  bool opeaned3 = false;

  bool opeaned4 = false;

  bool iffirst = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getpayment)] action in CreateAccount3CopyCopy widget.
  ApiCallResponse? result;
  // Stores action output result for [Backend Call - API (createsub)] action in CreateAccount3CopyCopy widget.
  ApiCallResponse? apiResultf56;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for gemin widget.
  String? geminValue1;
  FormFieldController<String>? geminValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for chetm widget.
  String? chetmValue1;
  FormFieldController<String>? chetmValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for DropDownmilk widget.
  String? dropDownmilkValue1;
  FormFieldController<String>? dropDownmilkValueController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // Stores action output result for [Backend Call - API (clear)] action in Button widget.
  ApiCallResponse? apiResult1kj;
  // Stores action output result for [Backend Call - API (deletecus)] action in Button widget.
  ApiCallResponse? tmzmt;
  // Model for sett component.
  late SettModel settModel;
  // State field(s) for scroller widget.
  ScrollController? scroller;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (geminitwo)] action in TextField widget.
  ApiCallResponse? a269;
  // Stores action output result for [Backend Call - API (anthropic)] action in TextField widget.
  ApiCallResponse? a2;
  // Stores action output result for [Backend Call - API (openai)] action in TextField widget.
  ApiCallResponse? a64;
  // State field(s) for ListView widget.
  ScrollController? listViewController3;
  // Stores action output result for [Backend Call - API (clear)] action in Icon widget.
  ApiCallResponse? fondle;
  // Stores action output result for [Backend Call - API (clear)] action in Icon widget.
  ApiCallResponse? apiResultpua;
  // State field(s) for ListView widget.
  ScrollController? listViewController4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for gemin widget.
  String? geminValue2;
  FormFieldController<String>? geminValueController2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for chetm widget.
  String? chetmValue2;
  FormFieldController<String>? chetmValueController2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for DropDownmilk widget.
  String? dropDownmilkValue2;
  FormFieldController<String>? dropDownmilkValueController2;
  // State field(s) for ListView widget.
  ScrollController? listViewController5;
  // Stores action output result for [Backend Call - API (clear)] action in RichText widget.
  ApiCallResponse? apiResultdecno;
  // Stores action output result for [Backend Call - API (deletecus)] action in Button widget.
  ApiCallResponse? tmzmt00;
  // State field(s) for ListView widget.
  ScrollController? listViewController6;
  // Stores action output result for [Backend Call - API (clear)] action in Icon widget.
  ApiCallResponse? fondle9;
  // Stores action output result for [Backend Call - API (clear)] action in Icon widget.
  ApiCallResponse? o0009;

  @override
  void initState(BuildContext context) {
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
    settModel = createModel(context, () => SettModel());
    scroller = ScrollController();
    listViewController3 = ScrollController();
    listViewController4 = ScrollController();
    listViewController5 = ScrollController();
    listViewController6 = ScrollController();
  }

  @override
  void dispose() {
    listViewController1?.dispose();
    listViewController2?.dispose();
    settModel.dispose();
    scroller?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listViewController3?.dispose();
    listViewController4?.dispose();
    listViewController5?.dispose();
    listViewController6?.dispose();
  }
}
