import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReportsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_caso widget.
  TextEditingController? txtCasoController;
  String? Function(BuildContext, String?)? txtCasoControllerValidator;
  // State field(s) for txt_categoria widget.
  TextEditingController? txtCategoriaController;
  String? Function(BuildContext, String?)? txtCategoriaControllerValidator;
  // State field(s) for txt_ubicacion widget.
  TextEditingController? txtUbicacionController;
  String? Function(BuildContext, String?)? txtUbicacionControllerValidator;
  // State field(s) for txt_descripcion widget.
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtCasoController?.dispose();
    txtCategoriaController?.dispose();
    txtUbicacionController?.dispose();
    txtDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
