import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'abnormal_procedureview_model.dart';
export 'abnormal_procedureview_model.dart';

class AbnormalProcedureviewWidget extends StatefulWidget {
  const AbnormalProcedureviewWidget({super.key});

  static String routeName = 'AbnormalProcedureview';
  static String routePath = '/abnormalProcedureview';

  @override
  State<AbnormalProcedureviewWidget> createState() =>
      _AbnormalProcedureviewWidgetState();
}

class _AbnormalProcedureviewWidgetState
    extends State<AbnormalProcedureviewWidget> {
  late AbnormalProcedureviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AbnormalProcedureviewModel());
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (FFAppState().AbnormalProcedure == 16)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EcamProcedureInFlight(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/FEBEC8FF-86E4-4208-8C5F-853AB66E5DF3.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 17)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EcamProcedureOnGround(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/319483C7-8E2D-4BDC-A025-E41EE4700BFD.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 14)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.RejectedTakeOff(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/5E19E0A0-9F33-4376-8B93-2FACE1244704.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 1)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EmergencyEvacuation(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/6987CBE6-DC07-4F25-8B28-F6373C2C48DF.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 4)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EmerElecProcedure(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/23A0C020-55F8-4663-AFB4-8C42D5981B69.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 9)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.AdrIrFaultWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/ACA58E00-A533-4453-850B-CAC7C7CEC090.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 3)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.SmokeProcedure(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/7827379D-D5FF-4937-A6D5-EB7F39191A59.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 10)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.SlatsFlapsJammed(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/49C44CFE-04F2-4455-A629-81EF29A458F3.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 11)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.DualHydGYFailure(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/65906B52-814D-4F18-BD92-19E3B5849924.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 12)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.DualHydGBFailure(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/E3C52905-D0DC-418B-8EDF-CBD2BF76DA68.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 13)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.DualHydBYFailure(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/5E1EBD5C-7FEA-4403-9926-A3CAED4D78CE.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 6)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EngineFailureOnTakeoffWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/48AEB37B-F8A0-4301-8B3F-E3A1F11658D4.jpeg',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 7)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EngineFailureInCruiseWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/66F2E4BE-4F85-4A2A-A1E7-AF99172891AF.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 8)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.DualEngineFailureWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/FDFF49E4-29C6-4546-BF78-259DA8EEA0C8.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 2)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EmergencyDescentWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/38CB64BC-0C9B-49FD-9EA8-BA36B61C6763.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 5)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EngineStartProblemsWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/4187C61E-FA35-4E42-A315-0A2B6946540C.png',
                    ),
                  ),
                ),
              if (FFAppState().AbnormalProcedure == 15)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.OverweightLandingWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imagePath:
                          'https://raw.githubusercontent.com/osamanabel1999/App-assets/refs/heads/main/8BE1720A-7C74-47B9-9EA6-23B0AB3A79E7.jpeg',
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
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.EfbPdfViewerWidget(
                      width: double.infinity,
                      height: double.infinity,
                      pdfUrl:
                          'https://www.simbrief.com/ofp/flightplans/HECAHEAX_PDF_1784930760.f28521a1.pdf',
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
