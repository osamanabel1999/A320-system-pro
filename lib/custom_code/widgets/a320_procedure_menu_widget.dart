// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class A320ProcedureMenuWidget extends StatefulWidget {
  const A320ProcedureMenuWidget({
    Key? key,
    this.width,
    this.height,
    // الـ 17 Action Parameters
    this.onEmergencyEvacuation,
    this.onEmergencyDescent,
    this.onSmokeProcedure,
    this.onEmerElecProcedure,
    this.onEngineStartProblems,
    this.onEngineFailureOnTakeoff,
    this.onEngineFailureInCruise,
    this.onDualEngineFailure,
    this.onAdrIrFault,
    this.onSlatsFlapsJammed,
    this.onDualHydGYFailure,
    this.onDualHydGBFailure,
    this.onDualHydBYFailure,
    this.onRejectedTakeOff,
    this.onOverweightLanding,
    this.onEcamProcedureInFlight,
    this.onEcamProcedureOnGround,
  }) : super(key: key);

  final double? width;
  final double? height;

  final Future Function()? onEmergencyEvacuation;
  final Future Function()? onEmergencyDescent;
  final Future Function()? onSmokeProcedure;
  final Future Function()? onEmerElecProcedure;
  final Future Function()? onEngineStartProblems;
  final Future Function()? onEngineFailureOnTakeoff;
  final Future Function()? onEngineFailureInCruise;
  final Future Function()? onDualEngineFailure;
  final Future Function()? onAdrIrFault;
  final Future Function()? onSlatsFlapsJammed;
  final Future Function()? onDualHydGYFailure;
  final Future Function()? onDualHydGBFailure;
  final Future Function()? onDualHydBYFailure;
  final Future Function()? onRejectedTakeOff;
  final Future Function()? onOverweightLanding;
  final Future Function()? onEcamProcedureInFlight;
  final Future Function()? onEcamProcedureOnGround;

  @override
  _A320ProcedureMenuWidgetState createState() =>
      _A320ProcedureMenuWidgetState();
}

class _A320ProcedureMenuWidgetState extends State<A320ProcedureMenuWidget> {
  final Color bgColor = const Color(0xFF0C0C0E);
  final Color cardColor = const Color(0xFF18181C);
  final Color textPrimary = const Color(0xFFFFFFFF);
  final Color textSecondary = const Color(0xFFA3A3A3);

  final Color redCritical = const Color(0xFFEF4444);
  final Color orangeWarning = const Color(0xFFF59E0B);
  final Color blueSystem = const Color(0xFF3B82F6);
  final Color greenOps = const Color(0xFF10B981);

  List<Map<String, dynamic>> get _menuGroups => [
        {
          'groupName': 'CRITICAL EMERGENCIES',
          'color': redCritical,
          'items': [
            {
              'title': 'EMER EVAC',
              'icon': Icons.exit_to_app,
              'action': widget.onEmergencyEvacuation
            },
            {
              'title': 'EMER DESCENT',
              'icon': Icons.arrow_downward,
              'action': widget.onEmergencyDescent
            },
            {
              'title': 'SMOKE / FIRE',
              'icon': Icons.local_fire_department,
              'action': widget.onSmokeProcedure
            },
            {
              'title': 'ELEC EMER CONFIG',
              'icon': Icons.flash_on,
              'action': widget.onEmerElecProcedure
            },
          ]
        },
        {
          'groupName': 'POWERPLANT (ENGINES)',
          'color': orangeWarning,
          'items': [
            {
              'title': 'ENG START FAULT',
              'icon': Icons.power_settings_new,
              'action': widget.onEngineStartProblems
            },
            {
              'title': 'ENG FAIL ON TAKEOFF',
              'icon': Icons.dangerous,
              'action': widget.onEngineFailureOnTakeoff
            },
            {
              'title': 'ENG FAIL IN CRUISE',
              'icon': Icons.flight_takeoff,
              'action': widget.onEngineFailureInCruise
            },
            {
              'title': 'ENG DUAL FAILURE',
              'icon': Icons.warning_amber_rounded,
              'action': widget.onDualEngineFailure
            },
          ]
        },
        {
          'groupName': 'AIRCRAFT SYSTEMS',
          'color': blueSystem,
          'items': [
            {
              'title': 'ADR / IR FAULT',
              'icon': Icons.explore,
              'action': widget.onAdrIrFault
            },
            {
              'title': 'SLATS/FLAPS JAMMED',
              'icon': Icons.layers,
              'action': widget.onSlatsFlapsJammed
            },
            {
              'title': 'HYD G + Y LO PRESS',
              'icon': Icons.settings_suggest,
              'action': widget.onDualHydGYFailure
            },
            {
              'title': 'HYD G + B LO PRESS',
              'icon': Icons.settings_suggest,
              'action': widget.onDualHydGBFailure
            },
            {
              'title': 'HYD B + Y LO PRESS',
              'icon': Icons.settings_suggest,
              'action': widget.onDualHydBYFailure
            },
          ]
        },
        {
          'groupName': 'FLIGHT OPERATIONS',
          'color': greenOps,
          'items': [
            {
              'title': 'REJECTED TAKEOFF',
              'icon': Icons.cancel_presentation,
              'action': widget.onRejectedTakeOff
            },
            {
              'title': 'OVERWEIGHT LANDING',
              'icon': Icons.fitness_center,
              'action': widget.onOverweightLanding
            },
            {
              'title': 'ECAM IN FLIGHT',
              'icon': Icons.flight,
              'action': widget.onEcamProcedureInFlight
            },
            {
              'title': 'ECAM ON GROUND',
              'icon': Icons.airplanemode_inactive,
              'action': widget.onEcamProcedureOnGround
            },
          ]
        },
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: bgColor,
      child: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF121216),
                border: Border(
                    bottom: BorderSide(
                        color: Colors.white.withOpacity(0.05), width: 1)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: blueSystem.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: blueSystem.withOpacity(0.3)),
                    ),
                    child:
                        Icon(Icons.flight_takeoff, color: blueSystem, size: 22),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A320 QRH',
                        style: TextStyle(
                          color: textSecondary,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Abnormal Procedures',
                        style: TextStyle(
                          color: textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                physics: const BouncingScrollPhysics(),
                itemCount: _menuGroups.length,
                itemBuilder: (context, groupIndex) {
                  final group = _menuGroups[groupIndex];
                  final String groupName = group['groupName'];
                  final Color groupColor = group['color'];
                  final List<Map<String, dynamic>> items = group['items'];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Category Title
                        Padding(
                          padding: const EdgeInsets.only(left: 4, bottom: 12),
                          child: Row(
                            children: [
                              Icon(Icons.label_important,
                                  color: groupColor, size: 16),
                              const SizedBox(width: 8),
                              Text(
                                groupName,
                                style: TextStyle(
                                  color: groupColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Sleek Rectangular Grid
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                260, // بيخلي الزراير تاخد راحتها وتفرد
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio:
                                3.2, // نسبة العرض للارتفاع عشان تدينا شكل المستطيل الاحترافي
                          ),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return Container(
                              decoration: BoxDecoration(
                                color: cardColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.04)),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(8),
                                  splashColor: groupColor.withOpacity(0.1),
                                  highlightColor: groupColor.withOpacity(0.05),
                                  onTap: () async {
                                    final action =
                                        item['action'] as Future Function()?;
                                    if (action != null) {
                                      await action();
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      // Left Accent Line
                                      Container(
                                        width: 4,
                                        decoration: BoxDecoration(
                                          color: groupColor.withOpacity(0.8),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                          ),
                                        ),
                                      ),
                                      // Stack for perfect centering
                                      Expanded(
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // Icon fixed to the left
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12.0),
                                                child: Icon(item['icon'],
                                                    color: groupColor
                                                        .withOpacity(0.7),
                                                    size: 20),
                                              ),
                                            ),
                                            // Text perfectly centered
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 36.0),
                                              child: Text(
                                                item['title'],
                                                textAlign: TextAlign.center,
                                                maxLines:
                                                    1, // إجبار على سطر واحد
                                                style: TextStyle(
                                                  color: textPrimary,
                                                  fontSize: 12.5,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.3,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
