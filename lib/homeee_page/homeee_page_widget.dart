import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'homeee_page_model.dart';
export 'homeee_page_model.dart';

class HomeeePageWidget extends StatefulWidget {
  const HomeeePageWidget({super.key});

  static String routeName = 'HomeeePage';
  static String routePath = '/homeeePage';

  @override
  State<HomeeePageWidget> createState() => _HomeeePageWidgetState();
}

class _HomeeePageWidgetState extends State<HomeeePageWidget> {
  late HomeeePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeeePageModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: custom_widgets.A320InstructorHomeWidget(
                    width: double.infinity,
                    height: double.infinity,
                    onSystemLimitationsTap: () async {
                      context.pushNamed(LimitionMENUWidget.routeName);
                    },
                    onSystemsArchitectureTap: () async {
                      context.pushNamed(PdfsysWidget.routeName);
                    },
                    onTechnicalNotesTap: () async {
                      context.pushNamed(PdftechnicalnotesWidget.routeName);
                    },
                    onPerformanceTheoryTap: () async {
                      context.pushNamed(PerformanceWidget.routeName);
                    },
                    onDispatchCalculatorTap: () async {
                      context.pushNamed(BreifingMENUWidget.routeName);
                    },
                    onInteractiveFlightDeckTap: () async {
                      context.pushNamed(WebviewVirtualCockpitWidget.routeName);
                    },
                    onPanelFamiliarizationTap: () async {
                      context.pushNamed(A320LayoutWidget.routeName);
                    },
                    onProficiencyExamTap: () async {
                      context.pushNamed(ExamWidget.routeName);
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
