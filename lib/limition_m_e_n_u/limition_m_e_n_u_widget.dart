import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'limition_m_e_n_u_model.dart';
export 'limition_m_e_n_u_model.dart';

class LimitionMENUWidget extends StatefulWidget {
  const LimitionMENUWidget({super.key});

  static String routeName = 'LimitionMENU';
  static String routePath = '/limitionMENU';

  @override
  State<LimitionMENUWidget> createState() => _LimitionMENUWidgetState();
}

class _LimitionMENUWidgetState extends State<LimitionMENUWidget> {
  late LimitionMENUModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LimitionMENUModel());
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
                  child: custom_widgets.A320LimitationsMenuWidget(
                    width: double.infinity,
                    height: double.infinity,
                    onAircraftGeneralTap: () async {
                      FFAppState().Limition = 1;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onEnginesTap: () async {
                      FFAppState().Limition = 2;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onFuelTap: () async {
                      FFAppState().Limition = 3;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onElectricalTap: () async {
                      FFAppState().Limition = 4;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onAirBleedTap: () async {
                      FFAppState().Limition = 5;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onAutoFlightTap: () async {
                      FFAppState().Limition = 6;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onFlightControlsTap: () async {
                      FFAppState().Limition = 7;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onLandingGearTap: () async {
                      FFAppState().Limition = 8;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onIceProtectionTap: () async {
                      FFAppState().Limition = 9;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onOxygenTap: () async {
                      FFAppState().Limition = 10;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onSurveillanceTap: () async {
                      FFAppState().Limition = 11;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
                    },
                    onApuTap: () async {
                      FFAppState().Limition = 12;
                      safeSetState(() {});

                      context.pushNamed(LimitionWidget.routeName);
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
