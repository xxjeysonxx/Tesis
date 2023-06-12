import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'frm_pagina_principal_model.dart';
export 'frm_pagina_principal_model.dart';

class FrmPaginaPrincipalWidget extends StatefulWidget {
  const FrmPaginaPrincipalWidget({Key? key}) : super(key: key);

  @override
  _FrmPaginaPrincipalWidgetState createState() =>
      _FrmPaginaPrincipalWidgetState();
}

class _FrmPaginaPrincipalWidgetState extends State<FrmPaginaPrincipalWidget> {
  late FrmPaginaPrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrmPaginaPrincipalModel());
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
        drawer: Drawer(
          elevation: 16.0,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.87, -0.66),
                child: Icon(
                  Icons.person_add,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.4, -0.64),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('reports');
                  },
                  child: Text(
                    'Crear Reporte',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, -0.54),
                child: Icon(
                  Icons.person,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.37, -0.52),
                child: Text(
                  'Ver Reportes',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.83, -0.4),
                child: Icon(
                  Icons.check_circle_outline,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.45, -0.4),
                child: Text(
                  'Acerca de',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.08, -0.81),
                child: Text(
                  'Bienvenido',
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.12, -0.74),
                child: Text(
                  currentUserEmail,
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.83, -0.29),
                child: Icon(
                  Icons.logout,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.48, -0.29),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('Login', context.mounted);
                  },
                  child: Text(
                    'Cerrar Sesion',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.92, 0.24),
                child: Icon(
                  Icons.person,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.49, 0.24),
                child: Text(
                  'Registrar_Usuario',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.03, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/LOGO_FIM_(1).png',
                      width: 300.0,
                      height: 343.0,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.03, -0.65),
                  child: Text(
                    'Bienvenido',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.06, -0.54),
                  child: Text(
                    currentUserEmail,
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
