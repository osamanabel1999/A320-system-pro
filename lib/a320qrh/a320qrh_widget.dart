import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'a320qrh_model.dart';
export 'a320qrh_model.dart';

class A320qrhWidget extends StatefulWidget {
  const A320qrhWidget({super.key});

  static String routeName = 'A320QRH';
  static String routePath = '/a320qrh';

  @override
  State<A320qrhWidget> createState() => _A320qrhWidgetState();
}

class _A320qrhWidgetState extends State<A320qrhWidget> {
  late A320qrhModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A320qrhModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: custom_widgets.A320ProcedureMenuWidget(
                    width: double.infinity,
                    height: double.infinity,
                    onEmergencyEvacuation: () async {
                      FFAppState().AbnormalProcedure = 1;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEmergencyDescent: () async {
                      FFAppState().AbnormalProcedure = 2;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onSmokeProcedure: () async {
                      FFAppState().AbnormalProcedure = 3;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEmerElecProcedure: () async {
                      FFAppState().AbnormalProcedure = 4;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEngineStartProblems: () async {
                      FFAppState().AbnormalProcedure = 5;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEngineFailureOnTakeoff: () async {
                      FFAppState().AbnormalProcedure = 6;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEngineFailureInCruise: () async {
                      FFAppState().AbnormalProcedure = 7;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onDualEngineFailure: () async {
                      FFAppState().AbnormalProcedure = 8;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onAdrIrFault: () async {
                      FFAppState().AbnormalProcedure = 9;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onSlatsFlapsJammed: () async {
                      FFAppState().AbnormalProcedure = 10;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onDualHydGYFailure: () async {
                      FFAppState().AbnormalProcedure = 11;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onDualHydGBFailure: () async {
                      FFAppState().AbnormalProcedure = 12;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onDualHydBYFailure: () async {
                      FFAppState().AbnormalProcedure = 13;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onRejectedTakeOff: () async {
                      FFAppState().AbnormalProcedure = 14;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onOverweightLanding: () async {
                      FFAppState().AbnormalProcedure = 15;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEcamProcedureInFlight: () async {
                      FFAppState().AbnormalProcedure = 16;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                    onEcamProcedureOnGround: () async {
                      FFAppState().AbnormalProcedure = 17;
                      safeSetState(() {});

                      context.pushNamed(AbnormalProcedureviewWidget.routeName);
                    },
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                FlutterFlowAdBanner(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-7880697829268273/8460472732',
                  androidAdUnitID: 'ca-app-pub-7880697829268273/8136084814',
                ),
            ],
          ),
        ),
      ),
    );
  }
}
