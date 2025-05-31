import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sett_model.dart';
export 'sett_model.dart';

class SettWidget extends StatefulWidget {
  const SettWidget({super.key});

  @override
  State<SettWidget> createState() => _SettWidgetState();
}

class _SettWidgetState extends State<SettWidget> {
  late SettModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).height * 0.05,
      height: MediaQuery.sizeOf(context).height * 0.05,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Icon(
              Icons.notes,
              color: Colors.white,
              size: MediaQuery.sizeOf(context).height * 0.035,
            ),
          ),
        ],
      ),
    );
  }
}
