import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'no_search_result_found_model.dart';
export 'no_search_result_found_model.dart';

class NoSearchResultFoundWidget extends StatefulWidget {
  const NoSearchResultFoundWidget({Key? key}) : super(key: key);

  @override
  _NoSearchResultFoundWidgetState createState() =>
      _NoSearchResultFoundWidgetState();
}

class _NoSearchResultFoundWidgetState extends State<NoSearchResultFoundWidget> {
  late NoSearchResultFoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoSearchResultFoundModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Lottie.network(
        'https://lottie.host/b0da3929-9326-4fb2-b724-ba450f3d1283/tlJsrRMMQK.json',
        width: 150.0,
        height: 130.0,
        fit: BoxFit.cover,
        animate: true,
      ),
    );
  }
}
