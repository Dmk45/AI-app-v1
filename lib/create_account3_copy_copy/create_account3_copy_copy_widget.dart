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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_account3_copy_copy_model.dart';
export 'create_account3_copy_copy_model.dart';

class CreateAccount3CopyCopyWidget extends StatefulWidget {
  const CreateAccount3CopyCopyWidget({
    super.key,
    this.ano,
  });

  final bool? ano;

  static String routeName = 'CreateAccount3CopyCopy';
  static String routePath = '/Chat';

  @override
  State<CreateAccount3CopyCopyWidget> createState() =>
      _CreateAccount3CopyCopyWidgetState();
}

class _CreateAccount3CopyCopyWidgetState
    extends State<CreateAccount3CopyCopyWidget> with TickerProviderStateMixin {
  late CreateAccount3CopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateAccount3CopyCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().bornN) {
        _model.result = await GetpaymentCall.call(
          customer: valueOrDefault(currentUserDocument?.customerId, ''),
          type: 'card',
        );

        _model.apiResultf56 = await CreatesubCall.call(
          customer: valueOrDefault(currentUserDocument?.customerId, ''),
          price: 'price_1R8iylK3lgxttV21wjxhiKw1',
          defaultPaymentMethod: GetpaymentCall.id(
            (_model.result?.jsonBody ?? ''),
          ),
        );

        FFAppState().bornN = false;
        FFAppState().update(() {});
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 10.0.ms,
            duration: 800.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 10.0.ms,
            duration: 800.0.ms,
            begin: Offset(-5.0, -5.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 10.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0E0E0E),
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: Visibility(
                visible:
                    MediaQuery.sizeOf(context).width > 1100.0 ? true : false,
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.2,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: MediaQuery.sizeOf(context).width > 1100.0
                        ? Colors.black
                        : Colors.black,
                    border: Border.all(
                      width: 2.0,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF171717),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.07,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF171717),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setDarkModeSetting(
                                                context, ThemeMode.light);
                                          },
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'p3yhdtdm' /* MODELS */,
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: Container(
                                        width: double.infinity,
                                        height: () {
                                          if (MediaQuery.sizeOf(context)
                                                  .height >
                                              2099.0) {
                                            return 100.0;
                                          } else if ((MediaQuery.sizeOf(context)
                                                      .height <
                                                  2099.0) &&
                                              (MediaQuery.sizeOf(context)
                                                      .width >
                                                  1999.0)) {
                                            return 100.0;
                                          } else {
                                            return 50.0;
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (_model.opeaned3 == true) {
                                              return Color(0xFF2F2F2F);
                                            } else if (FFAppState()
                                                    .CurrentModel ==
                                                'gemini') {
                                              return Color(0xFF2F2F2F);
                                            } else {
                                              return Color(0x00000000);
                                            }
                                          }(),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                            topLeft: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState().CurrentModel =
                                                    'gemini';
                                                FFAppState().update(() {});
                                                FFAppState().modelsize =
                                                    _model.geminValue2!;
                                                FFAppState().update(() {});
                                                if (FFAppState()
                                                        .chatlis
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .currentINDEX)
                                                        ?.model !=
                                                    _model.geminValue2) {
                                                  FFAppState().addToChatlis(
                                                      ChatLisStruct(
                                                    id: getCurrentTimestamp
                                                        .millisecondsSinceEpoch
                                                        .toString(),
                                                    model: _model.geminValue2,
                                                  ));
                                                  FFAppState().update(() {});
                                                  FFAppState().currentINDEX =
                                                      FFAppState()
                                                              .chatlis
                                                              .length -
                                                          1;
                                                  FFAppState().update(() {});
                                                }
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/gemini.jpg',
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .height >
                                                            2099.0) {
                                                          return 100.0;
                                                        } else if ((MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height <
                                                                2099.0) &&
                                                            (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                1999.0)) {
                                                          return 100.0;
                                                        } else {
                                                          return 50.0;
                                                        }
                                                      }(),
                                                      height: double.infinity,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .geminValueController2 ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .geminValue2 ??= FFAppState()
                                                                  .CurrentModel ==
                                                              'gemini'
                                                          ? FFAppState()
                                                              .modelsize
                                                          : 'gemini-2.0-pro-exp-02-05',
                                                    ),
                                                    options: List<String>.from([
                                                      'gemini-1.5-pro',
                                                      '\tgemini-1.0-pro',
                                                      'gemini-2.0-flash',
                                                      'gemini-2.0-pro-exp-02-05',
                                                      'gemini-1.5-flash',
                                                      'gemini-2.5-pro-exp-02-05'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'bqu5p6mf' /* gemini-1.5-pro */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'chx6z2sp' /* 	gemini-1.0-pro */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'broit8zz' /* Gemini 2.0 Flash */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        't7g5lao6' /* Gemini 2.0 Pro */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lalnhxr5' /* gemini-1.5-flash */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zsidwmak' /* gemini-2.5-pro-exp-03-25 */,
                                                      )
                                                    ],
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                          .geminValue2 = val);
                                                      FFAppState().modelsize =
                                                          _model.geminValue2!;
                                                      FFAppState()
                                                          .update(() {});
                                                      if (FFAppState()
                                                              .chatlis
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .currentINDEX)
                                                              ?.model !=
                                                          _model.geminValue2) {
                                                        FFAppState()
                                                            .addToChatlis(
                                                                ChatLisStruct(
                                                          id: getCurrentTimestamp
                                                              .millisecondsSinceEpoch
                                                              .toString(),
                                                          model: _model
                                                              .geminValue2,
                                                        ));
                                                        FFAppState()
                                                            .update(() {});
                                                        FFAppState()
                                                                .currentINDEX =
                                                            FFAppState()
                                                                    .chatlis
                                                                    .length -
                                                                1;
                                                        FFAppState()
                                                            .update(() {});
                                                      }
                                                    },
                                                    height: double.infinity,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .readexPro(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              fontSize: () {
                                                                if ((MediaQuery.sizeOf(context)
                                                                            .height <
                                                                        1089.0) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .height >
                                                                        500.0)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.018);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height <
                                                                    501.0) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.01);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.018);
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.02699530516,
                                                    ),
                                                    fillColor:
                                                        Color(0xFF0E0E0E),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Color(0xFF0E0E0E),
                                                    borderWidth: 0.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ].divide(SizedBox(width: 25.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered4 = true);
                                        _model.opeaned3 = true;
                                        safeSetState(() {});
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered4 = false);
                                        _model.opeaned3 = false;
                                        safeSetState(() {});
                                      }),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: Container(
                                        width: double.infinity,
                                        height: () {
                                          if (MediaQuery.sizeOf(context)
                                                  .height >
                                              2099.0) {
                                            return 100.0;
                                          } else if ((MediaQuery.sizeOf(context)
                                                      .height <
                                                  2099.0) &&
                                              (MediaQuery.sizeOf(context)
                                                      .width >
                                                  1999.0)) {
                                            return 100.0;
                                          } else {
                                            return 50.0;
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (_model.opeaned2) {
                                              return Color(0xFF2F2F2F);
                                            } else if (FFAppState()
                                                    .CurrentModel ==
                                                'Chatgpt') {
                                              return Color(0xFF2F2F2F);
                                            } else {
                                              return Color(0x00000000);
                                            }
                                          }(),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                            topLeft: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState().CurrentModel =
                                                    'Chatgpt';
                                                FFAppState().update(() {});
                                                FFAppState().modelsize =
                                                    _model.chetmValue2!;
                                                FFAppState().update(() {});
                                                if (FFAppState()
                                                        .chatlis
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .currentINDEX)
                                                        ?.model !=
                                                    _model.chetmValue2) {
                                                  FFAppState().addToChatlis(
                                                      ChatLisStruct(
                                                    id: getCurrentTimestamp
                                                        .millisecondsSinceEpoch
                                                        .toString(),
                                                    model: _model.chetmValue2,
                                                  ));
                                                  FFAppState().update(() {});
                                                  FFAppState().currentINDEX =
                                                      FFAppState()
                                                              .chatlis
                                                              .length -
                                                          1;
                                                  FFAppState().update(() {});
                                                }
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/balls.jpeg',
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .height >
                                                            2099.0) {
                                                          return 100.0;
                                                        } else if ((MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height <
                                                                2099.0) &&
                                                            (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                1999.0)) {
                                                          return 100.0;
                                                        } else {
                                                          return 50.0;
                                                        }
                                                      }(),
                                                      height: double.infinity,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  FlutterFlowDropDown<String>(
                                                    controller: _model
                                                            .chetmValueController2 ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .chetmValue2 ??= FFAppState()
                                                                  .CurrentModel ==
                                                              'Chatgpt'
                                                          ? FFAppState()
                                                              .modelsize
                                                          : 'o3-mini-2025-01-31',
                                                    ),
                                                    options: List<String>.from([
                                                      'gpt-4o-2024-08-06',
                                                      'gpt-4o-mini-2024-07-18',
                                                      'gpt-4.5-preview-2025-02-27',
                                                      'o1-2024-12-17',
                                                      'o3-mini-2025-01-31'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nd28k1ht' /* gpt-4o */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'k70x1tuj' /* gpt-4o-mini */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xljrd96d' /* gpt-4.5-preview */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sx4bh1ht' /* o1 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'q6o5q5ps' /* o3-mini */,
                                                      )
                                                    ],
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                          .chetmValue2 = val);
                                                      FFAppState().modelsize =
                                                          _model.chetmValue2!;
                                                      FFAppState()
                                                          .update(() {});
                                                      if (FFAppState()
                                                              .chatlis
                                                              .elementAtOrNull(
                                                                  FFAppState()
                                                                      .currentINDEX)
                                                              ?.model !=
                                                          _model.chetmValue2) {
                                                        FFAppState()
                                                            .addToChatlis(
                                                                ChatLisStruct(
                                                          id: getCurrentTimestamp
                                                              .millisecondsSinceEpoch
                                                              .toString(),
                                                          model: _model
                                                              .chetmValue2,
                                                        ));
                                                        FFAppState()
                                                            .update(() {});
                                                        FFAppState()
                                                                .currentINDEX =
                                                            FFAppState()
                                                                    .chatlis
                                                                    .length -
                                                                1;
                                                        FFAppState()
                                                            .update(() {});
                                                      }
                                                    },
                                                    height: double.infinity,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .readexPro(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              fontSize: () {
                                                                if ((MediaQuery.sizeOf(context)
                                                                            .height <
                                                                        1089.0) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .height >
                                                                        500.0)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.018);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height <
                                                                    501.0) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.01);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.018);
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.02699530516,
                                                    ),
                                                    fillColor:
                                                        Color(0xFF0E0E0E),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ].divide(SizedBox(width: 25.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered5 = true);
                                        _model.opeaned2 = true;
                                        safeSetState(() {});
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered5 = false);
                                        _model.opeaned2 = false;
                                        safeSetState(() {});
                                      }),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: Container(
                                        width: double.infinity,
                                        height: () {
                                          if (MediaQuery.sizeOf(context)
                                                  .height >
                                              2099.0) {
                                            return 100.0;
                                          } else if ((MediaQuery.sizeOf(context)
                                                      .height <
                                                  2099.0) &&
                                              (MediaQuery.sizeOf(context)
                                                      .width >
                                                  1999.0)) {
                                            return 100.0;
                                          } else {
                                            return 50.0;
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (_model.opeaned4 == true) {
                                              return Color(0xFF2F2F2F);
                                            } else if (FFAppState()
                                                    .CurrentModel ==
                                                'Claude') {
                                              return Color(0xFF2F2F2F);
                                            } else {
                                              return Color(0x00000000);
                                            }
                                          }(),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                            topLeft: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().CurrentModel =
                                                      'Claude';
                                                  FFAppState().update(() {});
                                                  FFAppState().modelsize =
                                                      _model
                                                          .dropDownmilkValue2!;
                                                  FFAppState().update(() {});
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/image.png',
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .height >
                                                              2099.0) {
                                                            return 100.0;
                                                          } else if ((MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height <
                                                                  2099.0) &&
                                                              (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >
                                                                  1999.0)) {
                                                            return 100.0;
                                                          } else {
                                                            return 50.0;
                                                          }
                                                        }(),
                                                        height: double.infinity,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<String>(
                                                      controller: _model
                                                              .dropDownmilkValueController2 ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropDownmilkValue2 ??=
                                                            FFAppState().CurrentModel ==
                                                                    'Claude'
                                                                ? FFAppState()
                                                                    .modelsize
                                                                : 'claude-3-7-sonnet-20250219',
                                                      ),
                                                      options:
                                                          List<String>.from([
                                                        'claude-3-5-sonnet-20241022',
                                                        'claude-3-opus-20240229',
                                                        'claude-3-5-haiku-20241022',
                                                        'claude-3-7-sonnet-20250219'
                                                      ]),
                                                      optionLabels: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1sg1s620' /* Claude 3.5 Sonnet */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3ehd1ij4' /* Claude 3 Opus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lz47ld8x' /* Claude 3.5 Haiku */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fixtkt6k' /* Claude 3.7 Sonnet */,
                                                        )
                                                      ],
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropDownmilkValue2 =
                                                            val);
                                                        FFAppState().modelsize =
                                                            _model
                                                                .dropDownmilkValue2!;
                                                        FFAppState()
                                                            .update(() {});
                                                        if (FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.model !=
                                                            FFAppState()
                                                                .modelsize) {
                                                          FFAppState()
                                                              .addToChatlis(
                                                                  ChatLisStruct(
                                                            id: getCurrentTimestamp
                                                                .millisecondsSinceEpoch
                                                                .toString(),
                                                            model: FFAppState()
                                                                .modelsize,
                                                          ));
                                                          FFAppState()
                                                              .update(() {});
                                                          FFAppState()
                                                                  .currentINDEX =
                                                              FFAppState()
                                                                      .chatlis
                                                                      .length -
                                                                  1;
                                                          FFAppState()
                                                              .update(() {});
                                                        }
                                                      },
                                                      height: double.infinity,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                fontSize: () {
                                                                  if ((MediaQuery.sizeOf(context)
                                                                              .height <
                                                                          1089.0) &&
                                                                      (MediaQuery.sizeOf(context)
                                                                              .height >
                                                                          500.0)) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.018);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height <
                                                                      501.0) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.01);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.018);
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.02699530516,
                                                      ),
                                                      fillColor:
                                                          Color(0xFF0E0E0E),
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Color(0xFF0E0E0E),
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 25.0)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered6 = true);
                                        _model.opeaned4 = true;
                                        safeSetState(() {});
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered6 = false);
                                        _model.opeaned4 = false;
                                        safeSetState(() {});
                                      }),
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                  controller: _model.listViewController4,
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      FFAppState()
                                                          .removeAtIndexFromChatlis(
                                                              FFAppState()
                                                                  .currentINDEX);
                                                      FFAppState()
                                                          .update(() {});
                                                      FFAppState()
                                                              .currentINDEX =
                                                          FFAppState()
                                                                  .currentINDEX +
                                                              -1;
                                                      FFAppState()
                                                          .update(() {});
                                                      _model.apiResultdecno =
                                                          await AiResponseGroup
                                                              .clearCall
                                                              .call(
                                                        username: valueOrDefault(
                                                            currentUserDocument
                                                                ?.customerId,
                                                            ''),
                                                        model: FFAppState()
                                                            .modelsize,
                                                        chatId: FFAppState()
                                                            .chatlis
                                                            .elementAtOrNull(
                                                                FFAppState()
                                                                    .currentINDEX)
                                                            ?.id,
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'cdjvhwzq' /* Clear */,
                                                            ),
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                            ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize: () {
                                                                    if ((MediaQuery.sizeOf(context).height <
                                                                            1089.0) &&
                                                                        (MediaQuery.sizeOf(context).height >
                                                                            500.0)) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.018);
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .height <
                                                                        501.0) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.01);
                                                                    } else {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.018);
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      5.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 1.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  FFAppState().Temppassword =
                                                      valueOrDefault(
                                                          currentUserDocument
                                                              ?.tempassword,
                                                          '');
                                                  FFAppState().update(() {});
                                                  _model.tmzmt00 =
                                                      await DeletecusCall.call(
                                                    customerId: valueOrDefault(
                                                        currentUserDocument
                                                            ?.customerId,
                                                        ''),
                                                  );

                                                  FFAppState().currentINDEX = 0;
                                                  FFAppState().update(() {});
                                                  FFAppState().deleteChatlis();
                                                  FFAppState().chatlis = [];

                                                  FFAppState().update(() {});
                                                  FFAppState().bornN = true;
                                                  FFAppState().update(() {});
                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();

                                                  final user = await authManager
                                                      .signInWithEmail(
                                                    context,
                                                    currentUserEmail,
                                                    FFAppState().Temppassword,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }

                                                  await authManager
                                                      .deleteUser(context);

                                                  context.pushNamedAuth(
                                                      CreateAccount3Widget
                                                          .routeName,
                                                      context.mounted);

                                                  safeSetState(() {});
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '7cj1yd91' /* L O G O U T */,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFFE0E3E7),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .readexPro(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF14181B),
                                                            fontSize: () {
                                                              if ((MediaQuery.sizeOf(
                                                                              context)
                                                                          .height <
                                                                      1089.0) &&
                                                                  (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height >
                                                                      500.0)) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.018);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height <
                                                                  501.0) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.01);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.018);
                                                              }
                                                            }(),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 50.0)),
                                    ),
                                  ],
                                  controller: _model.listViewController5,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.05,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1D1D1D),
                                        ),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            FFAppState()
                                                .addToChatlis(ChatLisStruct(
                                              id: getCurrentTimestamp
                                                  .millisecondsSinceEpoch
                                                  .toString(),
                                              name:
                                                  'chat ${(FFAppState().currentINDEX + 2).toString()}',
                                              model: FFAppState().modelsize,
                                            ));
                                            FFAppState().update(() {});
                                            FFAppState().currentINDEX =
                                                FFAppState().chatlis.length - 1;
                                            FFAppState().update(() {});
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'b5ufgcke' /* NEW CHAT */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 5.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF3B3B3B),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .height <
                                                              500.0
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.0125)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .height *
                                                              0.01877934272),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final id =
                                              FFAppState().chatlis.toList();

                                          return ListView.separated(
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              20.0,
                                              0,
                                              0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: id.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 50.0),
                                            itemBuilder: (context, idIndex) {
                                              final idItem = id[idIndex];
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                                  .currentINDEX =
                                                              idIndex;
                                                          safeSetState(() {});
                                                        },
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF262626),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      60.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      60.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Opacity(
                                                                    opacity: FFAppState().currentINDEX ==
                                                                            idIndex
                                                                        ? 1.0
                                                                        : 0.5,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            25.0,
                                                                            25.0,
                                                                            0.0,
                                                                            25.0),
                                                                        child:
                                                                            Text(
                                                                          '${idItem.model} ${idItem.name}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: MediaQuery.sizeOf(context).height < 500.0 ? (MediaQuery.sizeOf(context).width * 0.0125) : (MediaQuery.sizeOf(context).height * 0.01877934272),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.fondle9 =
                                                                        await AiResponseGroup
                                                                            .clearCall
                                                                            .call(
                                                                      username: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.customerId,
                                                                          ''),
                                                                      model: FFAppState()
                                                                          .modelsize,
                                                                      chatId:
                                                                          idItem
                                                                              .id,
                                                                    );

                                                                    FFAppState()
                                                                        .removeAtIndexFromChatlis(
                                                                            idIndex);
                                                                    FFAppState()
                                                                            .currentINDEX =
                                                                        FFAppState().currentINDEX +
                                                                            -1;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    _model.o0009 =
                                                                        await AiResponseGroup
                                                                            .clearCall
                                                                            .call(
                                                                      username: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.customerId,
                                                                          ''),
                                                                      model: idItem
                                                                          .model,
                                                                      chatId: idIndex
                                                                          .toString(),
                                                                    );

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .delete,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: MediaQuery.sizeOf(context).height < 500.0
                                                                        ? (MediaQuery.sizeOf(context).width *
                                                                            0.0125)
                                                                        : (MediaQuery.sizeOf(context).height *
                                                                            0.01877934272),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                            controller:
                                                _model.listViewController6,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(height: 50.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (MediaQuery.sizeOf(context).width > 1100.0 ? true : false)
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF0E0E0E),
                      border: Border.all(
                        color: Color(0xFF0E0E0E),
                        width: 2.0,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFF171717),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.07,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF171717),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.light);
                                              FFAppState().deleteChatlis();
                                              FFAppState().chatlis = [];

                                              FFAppState().update(() {});
                                            },
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFAppState()
                                                        .CurrentModel,
                                                    style: TextStyle(),
                                                  )
                                                ],
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      MouseRegion(
                                        opaque: false,
                                        cursor: MouseCursor.defer ??
                                            MouseCursor.defer,
                                        child: Container(
                                          width: double.infinity,
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .height >
                                                2099.0) {
                                              return 100.0;
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .height <
                                                    2099.0) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width >
                                                    1999.0)) {
                                              return 100.0;
                                            } else {
                                              return 50.0;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (_model.opeaned3 == true) {
                                                return Color(0xFF2F2F2F);
                                              } else if (FFAppState()
                                                      .CurrentModel ==
                                                  'gemini') {
                                                return Color(0xFF2F2F2F);
                                              } else {
                                                return Color(0x00000000);
                                              }
                                            }(),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5.0),
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().CurrentModel =
                                                      'gemini';
                                                  FFAppState().update(() {});
                                                  FFAppState().modelsize =
                                                      _model.geminValue1!;
                                                  FFAppState().update(() {});
                                                  if (FFAppState()
                                                          .chatlis
                                                          .elementAtOrNull(
                                                              FFAppState()
                                                                  .currentINDEX)
                                                          ?.model !=
                                                      _model.geminValue1) {
                                                    FFAppState().addToChatlis(
                                                        ChatLisStruct(
                                                      id: getCurrentTimestamp
                                                          .millisecondsSinceEpoch
                                                          .toString(),
                                                      name: 'chat',
                                                      model: FFAppState()
                                                          .modelsize,
                                                    ));
                                                    FFAppState().update(() {});
                                                    FFAppState().currentINDEX =
                                                        FFAppState()
                                                                .chatlis
                                                                .length -
                                                            1;
                                                    FFAppState().update(() {});
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/gemini.jpg',
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .height >
                                                              2099.0) {
                                                            return 100.0;
                                                          } else if ((MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height <
                                                                  2099.0) &&
                                                              (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >
                                                                  1999.0)) {
                                                            return 100.0;
                                                          } else {
                                                            return 50.0;
                                                          }
                                                        }(),
                                                        height: double.infinity,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<String>(
                                                      controller: _model
                                                              .geminValueController1 ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.geminValue1 ??=
                                                            FFAppState().CurrentModel ==
                                                                    'gemini'
                                                                ? FFAppState()
                                                                    .modelsize
                                                                : 'gemini-2.5-pro-exp-03-25',
                                                      ),
                                                      options:
                                                          List<String>.from([
                                                        'gemini-2.0-flash',
                                                        'gemini-2.5-pro-exp-03-25'
                                                      ]),
                                                      optionLabels: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6nsnzfxi' /* Gemini 2.0 Flash */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vei3qh5o' /* gemini 2.5 pro */,
                                                        )
                                                      ],
                                                      onChanged: (val) async {
                                                        safeSetState(() =>
                                                            _model.geminValue1 =
                                                                val);
                                                        FFAppState().modelsize =
                                                            _model.geminValue1!;
                                                        FFAppState()
                                                            .update(() {});
                                                        if (FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.model !=
                                                            _model
                                                                .geminValue1) {
                                                          FFAppState()
                                                              .addToChatlis(
                                                                  ChatLisStruct(
                                                            id: getCurrentTimestamp
                                                                .millisecondsSinceEpoch
                                                                .toString(),
                                                            name: 'chat',
                                                            model: FFAppState()
                                                                .modelsize,
                                                          ));
                                                          FFAppState()
                                                              .update(() {});
                                                          FFAppState()
                                                                  .currentINDEX =
                                                              FFAppState()
                                                                      .chatlis
                                                                      .length -
                                                                  1;
                                                          FFAppState()
                                                              .update(() {});
                                                        }
                                                      },
                                                      height: double.infinity,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                fontSize: () {
                                                                  if ((MediaQuery.sizeOf(context)
                                                                              .height <
                                                                          1089.0) &&
                                                                      (MediaQuery.sizeOf(context)
                                                                              .height >
                                                                          500.0)) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.018);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height <
                                                                      501.0) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.01);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.018);
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.02699530516,
                                                      ),
                                                      fillColor:
                                                          Color(0xFF0E0E0E),
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Color(0xFF0E0E0E),
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 25.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        onEnter: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered1 = true);
                                          _model.opeaned3 = true;
                                          safeSetState(() {});
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered1 = false);
                                          _model.opeaned3 = false;
                                          safeSetState(() {});
                                        }),
                                      ),
                                      MouseRegion(
                                        opaque: false,
                                        cursor: MouseCursor.defer ??
                                            MouseCursor.defer,
                                        child: Container(
                                          width: double.infinity,
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .height >
                                                2099.0) {
                                              return 100.0;
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .height <
                                                    2099.0) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width >
                                                    1999.0)) {
                                              return 100.0;
                                            } else {
                                              return 50.0;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (_model.opeaned2) {
                                                return Color(0xFF2F2F2F);
                                              } else if (FFAppState()
                                                      .CurrentModel ==
                                                  'Chatgpt') {
                                                return Color(0xFF2F2F2F);
                                              } else {
                                                return Color(0x00000000);
                                              }
                                            }(),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5.0),
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().CurrentModel =
                                                      'Chatgpt';
                                                  FFAppState().update(() {});
                                                  FFAppState().modelsize =
                                                      _model.chetmValue1!;
                                                  FFAppState().update(() {});
                                                  if (FFAppState()
                                                          .chatlis
                                                          .elementAtOrNull(
                                                              FFAppState()
                                                                  .currentINDEX)
                                                          ?.model !=
                                                      _model.chetmValue1) {
                                                    FFAppState().addToChatlis(
                                                        ChatLisStruct(
                                                      id: getCurrentTimestamp
                                                          .millisecondsSinceEpoch
                                                          .toString(),
                                                      name: 'chat',
                                                      model: FFAppState()
                                                          .modelsize,
                                                    ));
                                                    FFAppState().update(() {});
                                                    FFAppState().currentINDEX =
                                                        FFAppState()
                                                                .chatlis
                                                                .length -
                                                            1;
                                                    FFAppState().update(() {});
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/balls.jpeg',
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .height >
                                                              2099.0) {
                                                            return 100.0;
                                                          } else if ((MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height <
                                                                  2099.0) &&
                                                              (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >
                                                                  1999.0)) {
                                                            return 100.0;
                                                          } else {
                                                            return 50.0;
                                                          }
                                                        }(),
                                                        height: double.infinity,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    FlutterFlowDropDown<String>(
                                                      controller: _model
                                                              .chetmValueController1 ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.chetmValue1 ??=
                                                            FFAppState().CurrentModel ==
                                                                    'Chatgpt'
                                                                ? FFAppState()
                                                                    .modelsize
                                                                : 'o3-mini-2025-01-31',
                                                      ),
                                                      options:
                                                          List<String>.from([
                                                        'gpt-4o-2024-08-06',
                                                        'gpt-4o-mini-2024-07-18',
                                                        'gpt-4.5-preview-2025-02-27',
                                                        'o1-2024-12-17',
                                                        'o3-mini-2025-01-31'
                                                      ]),
                                                      optionLabels: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ictqx96c' /* gpt-4o */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x5nwlu4j' /* gpt-4o-mini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mb3caj2n' /* gpt-4.5-preview */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9vahmh2d' /* o1 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '53sje947' /* o3-mini */,
                                                        )
                                                      ],
                                                      onChanged: (val) async {
                                                        safeSetState(() =>
                                                            _model.chetmValue1 =
                                                                val);
                                                        FFAppState().modelsize =
                                                            _model.chetmValue1!;
                                                        FFAppState()
                                                            .update(() {});
                                                        if (FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.model !=
                                                            _model
                                                                .chetmValue1) {
                                                          FFAppState()
                                                              .addToChatlis(
                                                                  ChatLisStruct(
                                                            id: getCurrentTimestamp
                                                                .millisecondsSinceEpoch
                                                                .toString(),
                                                            name: 'chat',
                                                            model: FFAppState()
                                                                .modelsize,
                                                          ));
                                                          FFAppState()
                                                              .update(() {});
                                                          FFAppState()
                                                                  .currentINDEX =
                                                              FFAppState()
                                                                      .chatlis
                                                                      .length -
                                                                  1;
                                                          FFAppState()
                                                              .update(() {});
                                                        }
                                                      },
                                                      height: double.infinity,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                fontSize: () {
                                                                  if ((MediaQuery.sizeOf(context)
                                                                              .height <
                                                                          1089.0) &&
                                                                      (MediaQuery.sizeOf(context)
                                                                              .height >
                                                                          500.0)) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.018);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height <
                                                                      501.0) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.01);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.018);
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.02699530516,
                                                      ),
                                                      fillColor:
                                                          Color(0xFF0E0E0E),
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 25.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        onEnter: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered2 = true);
                                          _model.opeaned2 = true;
                                          safeSetState(() {});
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered2 = false);
                                          _model.opeaned2 = false;
                                          safeSetState(() {});
                                        }),
                                      ),
                                      MouseRegion(
                                        opaque: false,
                                        cursor: MouseCursor.defer ??
                                            MouseCursor.defer,
                                        child: Container(
                                          width: double.infinity,
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .height >
                                                2099.0) {
                                              return 100.0;
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .height <
                                                    2099.0) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width >
                                                    1999.0)) {
                                              return 100.0;
                                            } else {
                                              return 50.0;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (_model.opeaned4 == true) {
                                                return Color(0xFF2F2F2F);
                                              } else if (FFAppState()
                                                      .CurrentModel ==
                                                  'Claude') {
                                                return Color(0xFF2F2F2F);
                                              } else {
                                                return Color(0x00000000);
                                              }
                                            }(),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5.0),
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState().CurrentModel =
                                                        'Claude';
                                                    FFAppState().update(() {});
                                                    FFAppState().modelsize =
                                                        _model
                                                            .dropDownmilkValue1!;
                                                    FFAppState().update(() {});
                                                    if (FFAppState()
                                                            .chatlis
                                                            .elementAtOrNull(
                                                                FFAppState()
                                                                    .currentINDEX)
                                                            ?.model !=
                                                        FFAppState()
                                                            .modelsize) {
                                                      FFAppState().addToChatlis(
                                                          ChatLisStruct(
                                                        id: getCurrentTimestamp
                                                            .millisecondsSinceEpoch
                                                            .toString(),
                                                        name: 'chat',
                                                        model: FFAppState()
                                                            .modelsize,
                                                      ));
                                                      FFAppState()
                                                          .update(() {});
                                                      FFAppState()
                                                              .currentINDEX =
                                                          FFAppState()
                                                                  .chatlis
                                                                  .length -
                                                              1;
                                                      FFAppState()
                                                          .update(() {});
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'assets/images/image.png',
                                                          width: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height >
                                                                2099.0) {
                                                              return 100.0;
                                                            } else if ((MediaQuery.sizeOf(
                                                                            context)
                                                                        .height <
                                                                    2099.0) &&
                                                                (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    1999.0)) {
                                                              return 100.0;
                                                            } else {
                                                              return 50.0;
                                                            }
                                                          }(),
                                                          height:
                                                              double.infinity,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropDownmilkValueController1 ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropDownmilkValue1 ??=
                                                              FFAppState().CurrentModel ==
                                                                      'Claude'
                                                                  ? FFAppState()
                                                                      .modelsize
                                                                  : 'claude-3-7-sonnet-20250219',
                                                        ),
                                                        options:
                                                            List<String>.from([
                                                          'claude-3-5-sonnet-20241022',
                                                          'claude-3-opus-20240229',
                                                          'claude-3-5-haiku-20241022',
                                                          'claude-3-7-sonnet-20250219'
                                                        ]),
                                                        optionLabels: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'vyw54u1b' /* Claude 3.5 Sonnet */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8wd9ioby' /* Claude 3 Opus */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hqfnsrld' /* Claude 3.5 Haiku */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'f5szo1f0' /* Claude 3.7 Sonnet */,
                                                          )
                                                        ],
                                                        onChanged: (val) async {
                                                          safeSetState(() =>
                                                              _model.dropDownmilkValue1 =
                                                                  val);
                                                          FFAppState()
                                                                  .modelsize =
                                                              _model
                                                                  .dropDownmilkValue1!;
                                                          FFAppState()
                                                              .update(() {});
                                                          if (FFAppState()
                                                                  .chatlis
                                                                  .elementAtOrNull(
                                                                      FFAppState()
                                                                          .currentINDEX)
                                                                  ?.model !=
                                                              FFAppState()
                                                                  .modelsize) {
                                                            FFAppState()
                                                                .addToChatlis(
                                                                    ChatLisStruct(
                                                              id: getCurrentTimestamp
                                                                  .millisecondsSinceEpoch
                                                                  .toString(),
                                                              name: 'chat',
                                                              model: FFAppState()
                                                                  .modelsize,
                                                            ));
                                                            FFAppState()
                                                                .update(() {});
                                                            FFAppState()
                                                                    .currentINDEX =
                                                                FFAppState()
                                                                        .chatlis
                                                                        .length -
                                                                    1;
                                                            FFAppState()
                                                                .update(() {});
                                                          }
                                                        },
                                                        height: double.infinity,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  fontSize: () {
                                                                    if ((MediaQuery.sizeOf(context).height <
                                                                            1089.0) &&
                                                                        (MediaQuery.sizeOf(context).height >
                                                                            500.0)) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.018);
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .height <
                                                                        501.0) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.01);
                                                                    } else {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.018);
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: MediaQuery.sizeOf(
                                                                      context)
                                                                  .height *
                                                              0.02699530516,
                                                        ),
                                                        fillColor:
                                                            Color(0xFF0E0E0E),
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Color(0xFF0E0E0E),
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 25.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        onEnter: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered3 = true);
                                          _model.opeaned4 = true;
                                          safeSetState(() {});
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered3 = false);
                                          _model.opeaned4 = false;
                                          safeSetState(() {});
                                        }),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                    controller: _model.listViewController1,
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState().bornN = true;
                                                    FFAppState().update(() {});
                                                    while (FFAppState()
                                                            .chatlis
                                                            .length >
                                                        0) {
                                                      _model.apiResult1kj =
                                                          await AiResponseGroup
                                                              .clearCall
                                                              .call(
                                                        username: valueOrDefault(
                                                            currentUserDocument
                                                                ?.customerId,
                                                            ''),
                                                        model: FFAppState()
                                                            .chatlis
                                                            .lastOrNull
                                                            ?.model,
                                                        chatId: FFAppState()
                                                            .chatlis
                                                            .lastOrNull
                                                            ?.id,
                                                      );

                                                      FFAppState()
                                                          .removeAtIndexFromChatlis(
                                                              FFAppState()
                                                                      .chatlis
                                                                      .length -
                                                                  1);
                                                      FFAppState()
                                                          .update(() {});
                                                    }
                                                    FFAppState().Temppassword =
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.tempassword,
                                                            '');
                                                    FFAppState().update(() {});
                                                    FFAppState().currentINDEX =
                                                        0;
                                                    FFAppState().update(() {});
                                                    unawaited(
                                                      () async {
                                                        _model.tmzmt =
                                                            await DeletecusCall
                                                                .call(
                                                          customerId: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.customerId,
                                                              ''),
                                                        );
                                                      }(),
                                                    );
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();

                                                    final user =
                                                        await authManager
                                                            .signInWithEmail(
                                                      context,
                                                      currentUserEmail,
                                                      FFAppState().Temppassword,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    await authManager
                                                        .deleteUser(context);

                                                    context.pushNamedAuth(
                                                        CreateAccount3Widget
                                                            .routeName,
                                                        context.mounted);

                                                    safeSetState(() {});
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'zdicwsed' /* L O G O U T */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFE0E3E7),
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .readexPro(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF14181B),
                                                              fontSize: () {
                                                                if ((MediaQuery.sizeOf(context)
                                                                            .height <
                                                                        1089.0) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .height >
                                                                        500.0)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.018);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height <
                                                                    501.0) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.01);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.018);
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 50.0)),
                                      ),
                                    ],
                                    controller: _model.listViewController2,
                                  ),
                                ].divide(SizedBox(height: 50.0)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -0.1),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF212121),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (MediaQuery.sizeOf(context).width < 1100.0
                              ? true
                              : false)
                            Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF212121),
                              ),
                              child: Stack(
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      scaffoldKey.currentState!.openDrawer();
                                    },
                                    child: wrapWithModel(
                                      model: _model.settModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettWidget(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (MediaQuery.sizeOf(context).height > 250.0)
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -0.1),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.892,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF212121),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final response = FFAppState()
                                                    .chatlis
                                                    .elementAtOrNull(
                                                        FFAppState()
                                                            .currentINDEX)
                                                    ?.chatContentList
                                                    ?.toList() ??
                                                [];

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              itemCount: response.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 10.0),
                                              itemBuilder:
                                                  (context, responseIndex) {
                                                final responseItem =
                                                    response[responseIndex];
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    if (responseItem.role ==
                                                        'User')
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF929292),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              18.0),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                        child: SelectionArea(
                                                                            child: Text(
                                                                          responseItem
                                                                              .content,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: Colors.black,
                                                                                fontSize: MediaQuery.sizeOf(context).height < 500.0 ? (MediaQuery.sizeOf(context).width * 0.0125) : (MediaQuery.sizeOf(context).height * 0.01877934272),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        )),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ].addToEnd(SizedBox(
                                                              width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      1100.0
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1)
                                                                  : (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.05))),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'rowOnPageLoadAnimation']!),
                                                      ),
                                                    if (responseItem.role ==
                                                        'Model')
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(24.0),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            if (responseItem.modelName ==
                                                                                'gemini')
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).height * 0.02344665885,
                                                                                    height: MediaQuery.sizeOf(context).height * 0.02344665885,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.asset(
                                                                                      'assets/images/gemini.jpg',
                                                                                      fit: BoxFit.fill,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responseItem.modelName ==
                                                                                'Claude')
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).height * 0.02344665885,
                                                                                    height: MediaQuery.sizeOf(context).height * 0.02344665885,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.asset(
                                                                                      'assets/images/image.png',
                                                                                      fit: BoxFit.fill,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (responseItem.modelName ==
                                                                                'Chatgpt')
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).height * 0.02344665885,
                                                                                    height: MediaQuery.sizeOf(context).height * 0.02344665885,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.asset(
                                                                                      'assets/images/balls.jpeg',
                                                                                      fit: BoxFit.fill,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            MouseWidget(
                                                                              key: Key('Keylzy_${responseIndex}_of_${response.length}'),
                                                                              model: responseItem.modelsize,
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  await Clipboard.setData(ClipboardData(text: responseIndex.toString()));
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  'ixcijlbk' /*  */,
                                                                                ),
                                                                                icon: Icon(
                                                                                  Icons.content_copy,
                                                                                  size: MediaQuery.sizeOf(context).height * 0.02699530516,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).height * 0.04,
                                                                                  height: MediaQuery.sizeOf(context).height * 0.04,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: Color(0xC33B3A3A),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(24.0),
                                                                                  hoverColor: FlutterFlowTheme.of(context).accent4,
                                                                                  hoverTextColor: Colors.black,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxWidth:
                                                                              () {
                                                                            if ((MediaQuery.sizeOf(context).width > 699.0) &&
                                                                                (MediaQuery.sizeOf(context).width < 1101.0)) {
                                                                              return (MediaQuery.sizeOf(context).width * 0.6);
                                                                            } else if (MediaQuery.sizeOf(context).width > 1100.0) {
                                                                              return (MediaQuery.sizeOf(context).height * 0.7);
                                                                            } else {
                                                                              return (MediaQuery.sizeOf(context).width * 0.8);
                                                                            }
                                                                          }(),
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: SelectionArea(
                                                                                  child: Text(
                                                                                responseItem.content,
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                      fontSize: MediaQuery.sizeOf(context).height < 500.0 ? (MediaQuery.sizeOf(context).width * 0.0125) : (MediaQuery.sizeOf(context).height * 0.01877934272),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              )),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ].addToStart(SizedBox(
                                                              width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      1100.0
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.05)
                                                                  : (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.05))),
                                                        ),
                                                      ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 10.0))
                                                      .addToStart(SizedBox(
                                                          height: 5.0)),
                                                );
                                              },
                                              controller: _model.scroller,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width > 1100.0
                                        ? (MediaQuery.sizeOf(context).width *
                                            0.05)
                                        : 0.0,
                                    0.0,
                                  ),
                                  0.0,
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width > 1100.0
                                        ? (MediaQuery.sizeOf(context).width *
                                            0.05)
                                        : 0.0,
                                    0.0,
                                  ),
                                  0.0),
                              child: Container(
                                constraints: BoxConstraints(
                                  minWidth: 0.0,
                                  maxWidth: double.infinity,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF383838),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController,
                                                  focusNode:
                                                      _model.textFieldFocusNode,
                                                  onFieldSubmitted: (_) async {
                                                    if (!FFAppState().bornN) {
                                                      if (FFAppState()
                                                              .currentINDEX >
                                                          (FFAppState()
                                                                  .chatlis
                                                                  .length -
                                                              1)) {
                                                        FFAppState()
                                                            .addToChatlis(
                                                                ChatLisStruct(
                                                          id: getCurrentTimestamp
                                                              .millisecondsSinceEpoch
                                                              .toString(),
                                                          model: FFAppState()
                                                              .modelsize,
                                                          name: 'chat',
                                                        ));
                                                        FFAppState()
                                                            .update(() {});
                                                        FFAppState()
                                                                .currentINDEX =
                                                            FFAppState()
                                                                    .chatlis
                                                                    .length -
                                                                1;
                                                        FFAppState()
                                                            .update(() {});
                                                      }
                                                      if (FFAppState().finit) {
                                                        FFAppState()
                                                            .updateChatlisAtIndex(
                                                          FFAppState()
                                                              .currentINDEX,
                                                          (e) => e
                                                            ..updateChatContentList(
                                                              (e) => e.add(
                                                                  HistorygeminiStruct(
                                                                role: 'User',
                                                                content: _model
                                                                    .textController
                                                                    .text,
                                                              )),
                                                            ),
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                        FFAppState()
                                                                .currentrepo =
                                                            _model
                                                                .textController
                                                                .text;
                                                        FFAppState()
                                                            .update(() {});
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.clear();
                                                        });
                                                        if (FFAppState()
                                                                .CurrentModel ==
                                                            'gemini') {
                                                          _model.a269 =
                                                              await AiResponseGroup
                                                                  .geminitwoCall
                                                                  .call(
                                                            model: FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.model,
                                                            username: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.customerId,
                                                                ''),
                                                            q: FFAppState()
                                                                .currentrepo,
                                                            chatId: FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.id,
                                                          );
                                                          if (_model.a269
                                                                  ?.succeeded ??
                                                              true) {
                                                            final streamSubscription = _model
                                                                .a269
                                                                ?.streamedResponse
                                                                ?.stream
                                                                .transform(utf8
                                                                    .decoder)
                                                                .transform(
                                                                    const LineSplitter())
                                                                .transform(
                                                                    ServerSentEventLineTransformer())
                                                                .map((m) =>
                                                                    ResponseStreamMessage(
                                                                        message:
                                                                            m))
                                                                .listen(
                                                                  (onMessageInput) async {
                                                                    if (_model
                                                                        .iffirst) {
                                                                      FFAppState()
                                                                              .wholetext =
                                                                          onMessageInput
                                                                              .message;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      FFAppState()
                                                                          .updateChatlisAtIndex(
                                                                        FFAppState()
                                                                            .currentINDEX,
                                                                        (e) => e
                                                                          ..updateChatContentList(
                                                                            (e) =>
                                                                                e.add(HistorygeminiStruct(
                                                                              role: 'Model',
                                                                              modelsize: FFAppState().modelsize,
                                                                              modelName: FFAppState().CurrentModel,
                                                                              content: FFAppState().wholetext,
                                                                            )),
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      _model.iffirst =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                      unawaited(
                                                                        () async {
                                                                          await _model
                                                                              .scroller
                                                                              ?.animateTo(
                                                                            _model.scroller!.position.maxScrollExtent,
                                                                            duration:
                                                                                Duration(milliseconds: 1),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }(),
                                                                      );
                                                                    } else {
                                                                      FFAppState()
                                                                              .wholetext =
                                                                          '${FFAppState().wholetext}${onMessageInput.message}';
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      FFAppState()
                                                                          .updateChatlisAtIndex(
                                                                        FFAppState()
                                                                            .currentINDEX,
                                                                        (e) => e
                                                                          ..updateChatContentList(
                                                                            (e) => e[FFAppState().chatlis.elementAtOrNull(FFAppState().currentINDEX)!.index]
                                                                              ..content = FFAppState().wholetext,
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      unawaited(
                                                                        () async {
                                                                          await _model
                                                                              .scroller
                                                                              ?.animateTo(
                                                                            _model.scroller!.position.maxScrollExtent,
                                                                            duration:
                                                                                Duration(milliseconds: 1),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }(),
                                                                      );
                                                                    }
                                                                  },
                                                                  onError:
                                                                      (onErrorInput) async {},
                                                                  onDone:
                                                                      () async {
                                                                    FFAppState()
                                                                        .updateChatlisAtIndex(
                                                                      FFAppState()
                                                                          .currentINDEX,
                                                                      (e) => e
                                                                        ..incrementIndex(
                                                                            2),
                                                                    );
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    _model.iffirst =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                    await action_blocks
                                                                        .countandcharge(
                                                                      context,
                                                                      output: FFAppState()
                                                                          .chatlis
                                                                          .elementAtOrNull(
                                                                              FFAppState().currentINDEX)
                                                                          ?.chatContentList
                                                                          ?.lastOrNull
                                                                          ?.content,
                                                                    );
                                                                    FFAppState()
                                                                        .currentrepo = '';
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    FFAppState()
                                                                            .finit =
                                                                        true;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  },
                                                                );
                                                          }
                                                        }
                                                        if (FFAppState()
                                                                .CurrentModel ==
                                                            'Claude') {
                                                          _model.a2 =
                                                              await AiResponseGroup
                                                                  .anthropicCall
                                                                  .call(
                                                            q: FFAppState()
                                                                .currentrepo,
                                                            username: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.customerId,
                                                                ''),
                                                            model: FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.model,
                                                            chatId: FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.id,
                                                          );
                                                          if (_model.a2
                                                                  ?.succeeded ??
                                                              true) {
                                                            final streamSubscription = _model
                                                                .a2
                                                                ?.streamedResponse
                                                                ?.stream
                                                                .transform(utf8
                                                                    .decoder)
                                                                .transform(
                                                                    const LineSplitter())
                                                                .transform(
                                                                    ServerSentEventLineTransformer())
                                                                .map((m) =>
                                                                    ResponseStreamMessage(
                                                                        message:
                                                                            m))
                                                                .listen(
                                                                  (onMessageInput) async {
                                                                    if (_model
                                                                        .iffirst) {
                                                                      FFAppState()
                                                                              .wholetext =
                                                                          onMessageInput
                                                                              .message;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      FFAppState()
                                                                          .updateChatlisAtIndex(
                                                                        FFAppState()
                                                                            .currentINDEX,
                                                                        (e) => e
                                                                          ..updateChatContentList(
                                                                            (e) =>
                                                                                e.add(HistorygeminiStruct(
                                                                              role: 'Model',
                                                                              modelsize: FFAppState().modelsize,
                                                                              modelName: FFAppState().CurrentModel,
                                                                              content: FFAppState().wholetext,
                                                                            )),
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      _model.iffirst =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                      unawaited(
                                                                        () async {
                                                                          await _model
                                                                              .scroller
                                                                              ?.animateTo(
                                                                            _model.scroller!.position.maxScrollExtent,
                                                                            duration:
                                                                                Duration(milliseconds: 1),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }(),
                                                                      );
                                                                    } else {
                                                                      FFAppState()
                                                                              .wholetext =
                                                                          '${FFAppState().wholetext}${onMessageInput.message}';
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      FFAppState()
                                                                          .updateChatlisAtIndex(
                                                                        FFAppState()
                                                                            .currentINDEX,
                                                                        (e) => e
                                                                          ..updateChatContentList(
                                                                            (e) => e[FFAppState().chatlis.elementAtOrNull(FFAppState().currentINDEX)!.index]
                                                                              ..content = FFAppState().wholetext,
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      unawaited(
                                                                        () async {
                                                                          await _model
                                                                              .scroller
                                                                              ?.animateTo(
                                                                            _model.scroller!.position.maxScrollExtent,
                                                                            duration:
                                                                                Duration(milliseconds: 1),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }(),
                                                                      );
                                                                    }
                                                                  },
                                                                  onError:
                                                                      (onErrorInput) async {},
                                                                  onDone:
                                                                      () async {
                                                                    FFAppState()
                                                                        .updateChatlisAtIndex(
                                                                      FFAppState()
                                                                          .currentINDEX,
                                                                      (e) => e
                                                                        ..incrementIndex(
                                                                            2),
                                                                    );
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    _model.iffirst =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                    await action_blocks
                                                                        .countandcharge(
                                                                      context,
                                                                      output: FFAppState()
                                                                          .chatlis
                                                                          .elementAtOrNull(
                                                                              FFAppState().currentINDEX)
                                                                          ?.chatContentList
                                                                          ?.lastOrNull
                                                                          ?.content,
                                                                    );
                                                                    FFAppState()
                                                                        .currentrepo = '';
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    FFAppState()
                                                                            .finit =
                                                                        true;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  },
                                                                );
                                                          }
                                                        }
                                                        if (FFAppState()
                                                                .CurrentModel ==
                                                            'Chatgpt') {
                                                          _model.a64 =
                                                              await AiResponseGroup
                                                                  .openaiCall
                                                                  .call(
                                                            model: FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.model,
                                                            username: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.customerId,
                                                                ''),
                                                            q: FFAppState()
                                                                .currentrepo,
                                                            chatId: FFAppState()
                                                                .chatlis
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .currentINDEX)
                                                                ?.id,
                                                          );
                                                          if (_model.a64
                                                                  ?.succeeded ??
                                                              true) {
                                                            final streamSubscription = _model
                                                                .a64
                                                                ?.streamedResponse
                                                                ?.stream
                                                                .transform(utf8
                                                                    .decoder)
                                                                .transform(
                                                                    const LineSplitter())
                                                                .transform(
                                                                    ServerSentEventLineTransformer())
                                                                .map((m) =>
                                                                    ResponseStreamMessage(
                                                                        message:
                                                                            m))
                                                                .listen(
                                                                  (onMessageInput) async {
                                                                    if (_model
                                                                        .iffirst) {
                                                                      FFAppState()
                                                                              .wholetext =
                                                                          onMessageInput
                                                                              .message;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      FFAppState()
                                                                          .updateChatlisAtIndex(
                                                                        FFAppState()
                                                                            .currentINDEX,
                                                                        (e) => e
                                                                          ..updateChatContentList(
                                                                            (e) =>
                                                                                e.add(HistorygeminiStruct(
                                                                              role: 'Model',
                                                                              modelsize: FFAppState().modelsize,
                                                                              modelName: FFAppState().CurrentModel,
                                                                              content: FFAppState().wholetext,
                                                                            )),
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      _model.iffirst =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                      unawaited(
                                                                        () async {
                                                                          await _model
                                                                              .scroller
                                                                              ?.animateTo(
                                                                            _model.scroller!.position.maxScrollExtent,
                                                                            duration:
                                                                                Duration(milliseconds: 1),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }(),
                                                                      );
                                                                    } else {
                                                                      FFAppState()
                                                                              .wholetext =
                                                                          '${FFAppState().wholetext}${onMessageInput.message}';
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      FFAppState()
                                                                          .updateChatlisAtIndex(
                                                                        FFAppState()
                                                                            .currentINDEX,
                                                                        (e) => e
                                                                          ..updateChatContentList(
                                                                            (e) => e[FFAppState().chatlis.elementAtOrNull(FFAppState().currentINDEX)!.index]
                                                                              ..content = FFAppState().wholetext,
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                      unawaited(
                                                                        () async {
                                                                          await _model
                                                                              .scroller
                                                                              ?.animateTo(
                                                                            _model.scroller!.position.maxScrollExtent,
                                                                            duration:
                                                                                Duration(milliseconds: 1),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        }(),
                                                                      );
                                                                    }
                                                                  },
                                                                  onError:
                                                                      (onErrorInput) async {},
                                                                  onDone:
                                                                      () async {
                                                                    FFAppState()
                                                                        .updateChatlisAtIndex(
                                                                      FFAppState()
                                                                          .currentINDEX,
                                                                      (e) => e
                                                                        ..incrementIndex(
                                                                            2),
                                                                    );
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    await action_blocks
                                                                        .countandcharge(
                                                                      context,
                                                                      output: FFAppState()
                                                                          .chatlis
                                                                          .elementAtOrNull(
                                                                              FFAppState().currentINDEX)
                                                                          ?.chatContentList
                                                                          ?.lastOrNull
                                                                          ?.content,
                                                                    );
                                                                    _model.iffirst =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                    FFAppState()
                                                                        .currentrepo = '';
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    FFAppState()
                                                                            .finit =
                                                                        true;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  },
                                                                );
                                                          }
                                                        }
                                                      }
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  autofocus: true,
                                                  textInputAction:
                                                      TextInputAction.send,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '5mk35unn' /* input task */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFF6F6F6),
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .height <
                                                                  500.0
                                                              ? (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.0125)
                                                              : (MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.01877934272),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFA7A2A2),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .readexPro(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .height <
                                                                500.0
                                                            ? (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.0125)
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.01877934272),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: 9,
                                                  minLines: 1,
                                                  validator: _model
                                                      .textControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                ),
                if (MediaQuery.sizeOf(context).width > 1100.0 ? true : false)
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF171717),
                      border: Border.all(
                        color: Color(0xFF171717),
                        width: 2.0,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1D1D1D),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    FFAppState().addToChatlis(ChatLisStruct(
                                      id: getCurrentTimestamp
                                          .millisecondsSinceEpoch
                                          .toString(),
                                      name: 'chat',
                                      model: FFAppState().modelsize,
                                    ));
                                    FFAppState().update(() {});
                                    FFAppState().currentINDEX =
                                        FFAppState().chatlis.length - 1;
                                    FFAppState().update(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'sq9329ap' /* NEW CHAT */,
                                  ),
                                  options: FFButtonOptions(
                                    height: 5.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF4A4A4A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: MediaQuery.sizeOf(context)
                                                      .height <
                                                  500.0
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.0125)
                                              : (MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.01877934272),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  final id = FFAppState().chatlis.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      20.0,
                                      0,
                                      0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: id.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 50.0),
                                    itemBuilder: (context, idIndex) {
                                      final idItem = id[idIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().currentINDEX =
                                                      idIndex;
                                                  safeSetState(() {});
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF262626),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(60.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(60.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Opacity(
                                                            opacity: FFAppState()
                                                                        .currentINDEX ==
                                                                    idIndex
                                                                ? 1.0
                                                                : 0.5,
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        25.0,
                                                                        0.0,
                                                                        25.0),
                                                                child: Text(
                                                                  '${idItem.model}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        fontSize: MediaQuery.sizeOf(context).height < 500.0
                                                                            ? (MediaQuery.sizeOf(context).width *
                                                                                0.0125)
                                                                            : (MediaQuery.sizeOf(context).height *
                                                                                0.01877934272),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.fondle =
                                                                await AiResponseGroup
                                                                    .clearCall
                                                                    .call(
                                                              username: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.customerId,
                                                                  ''),
                                                              model: FFAppState()
                                                                  .modelsize,
                                                              chatId: idItem.id,
                                                            );

                                                            FFAppState()
                                                                .removeAtIndexFromChatlis(
                                                                    idIndex);
                                                            FFAppState()
                                                                    .currentINDEX =
                                                                FFAppState()
                                                                        .currentINDEX +
                                                                    -1;
                                                            FFAppState()
                                                                .update(() {});
                                                            _model.apiResultpua =
                                                                await AiResponseGroup
                                                                    .clearCall
                                                                    .call(
                                                              username: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.customerId,
                                                                  ''),
                                                              model:
                                                                  idItem.model,
                                                              chatId: idIndex
                                                                  .toString(),
                                                            );

                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.delete,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            size: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height <
                                                                    500.0
                                                                ? (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.0125)
                                                                : (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.01877934272),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    controller: _model.listViewController3,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
