import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'frm_crear_reporte_model.dart';
export 'frm_crear_reporte_model.dart';

class FrmCrearReporteWidget extends StatefulWidget {
  const FrmCrearReporteWidget({Key? key}) : super(key: key);

  @override
  _FrmCrearReporteWidgetState createState() => _FrmCrearReporteWidgetState();
}

class _FrmCrearReporteWidgetState extends State<FrmCrearReporteWidget> {
  late FrmCrearReporteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrmCrearReporteModel());

    _model.myBioController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('frm_pagina_principal');
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
            child: Text(
              'Crear Reporte',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.06, -0.76),
                          child: Text(
                            'Seleccionar Categoria',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.07, -0.4),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController1 ??=
                                FormFieldController<String>(null),
                            options: ['Dañado', 'Roto'],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue1 = val),
                            width: 300.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.17, -0.66),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController2 ??=
                                FormFieldController<String>(null),
                            options: ['Mobiliario', 'Electronico'],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue2 = val),
                            width: 300.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.03, -0.12),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController3 ??=
                                FormFieldController<String>(null),
                            options: [
                              'Edificio B1-Aula1',
                              'Edificio B1-Aula2',
                              'Edificio B1-Aula3'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue3 = val),
                            width: 300.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.02, 0.01),
                          child: Text(
                            'Descripcion',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.22),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 12.0),
                            child: TextFormField(
                              controller: _model.myBioController,
                              textCapitalization: TextCapitalization.sentences,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF57636C),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                hintText: 'reporte...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF57636C),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF4B39EF),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 24.0, 0.0, 24.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                              maxLines: 3,
                              validator: _model.myBioControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, -0.5),
                child: Text(
                  'Seleccionar Caso',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.25),
                child: Text(
                  'Ubicación',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, 0.48),
                child: FlutterFlowIconButton(
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.camera_alt,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();
                      } finally {
                        _model.isDataUploading = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFile =
                              selectedUploadedFiles.first;
                        });
                      } else {
                        setState(() {});
                        return;
                      }
                    }
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.68),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Enviar',
                  options: FFButtonOptions(
                    width: 113.0,
                    height: 60.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
