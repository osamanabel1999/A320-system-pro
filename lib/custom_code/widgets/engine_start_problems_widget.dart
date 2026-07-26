// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EngineStartProblemsWidget extends StatefulWidget {
  const EngineStartProblemsWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EngineStartProblemsWidgetState createState() =>
      _EngineStartProblemsWidgetState();
}

class _EngineStartProblemsWidgetState extends State<EngineStartProblemsWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed = const Color(0xFFEF4444); // أحمر للتحذيرات والحرائق
  final Color timelineBlue =
      const Color(0xFF3B82F6); // أزرق للأقسام الطبيعية والتشغيل
  final Color warningOrange =
      const Color(0xFFF59E0B); // أصفر/برتقالي للحالات والملاحظات

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: bgColor,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          physics: const BouncingScrollPhysics(),
          children: [
            // --- Title ---
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'ENGINE START PROBLEMS',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      color: timelineBlue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: timelineBlue, width: 1.0),
                    ),
                    child: Text(
                      'ATA 70',
                      style: TextStyle(
                        color: timelineBlue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- 1. FILTER CLOG & START VALVE FAULT ---
            _buildSectionTitle(
                'FILTER CLOG & START VALVE FAULT', warningOrange),
            _buildTextGroup(
              mainText: 'ENG 1(2) OIL or FUEL FILTER CLOG:',
              subItems: [
                'Maintenance action is due.',
                'If false warning: discard = possible, but not advizable.',
                'If dispatch: check weather – flight time – destination.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'ENG 1(2) START VALVE FAULT:',
              subItems: [
                'Consider START VALVE MANUAL OPERATION (use FCOM 3.04.70).',
                'Valve can be stuck open or closed.',
                'Ask mechanic if valve manually operable and reset normal start condition (closed) before starting.',
                'Check MEL (1 valve must operate for dual engine failure case).',
                'No C/B on start valve.',
                'Use CRANK position to check valve when both engines running.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. START FAULT & EGT OVERLIMIT ---
            _buildSectionTitle('START FAULT & EGT OVERLIMIT', alertRed),
            _buildTextGroup(
              mainText: 'ENG 1(2) START FAULT (Manual start on ground):',
              subItems: [
                'Cranking not displayed on ECAM.',
                'Dry crank 30 sec when N2 < 20%.',
                'Use FCOM 3.04.70.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'EGT Overlimit:',
              subItems: [
                'Auto start: FADEC reduces FF and tries again.',
                'If unsuccessful: manual start or maintenance action.',
                'Manual start: abort, crank, maintenance action.',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. TAILPIPE FIRE & ELEV POWER LOSS ---
            _buildSectionTitle('TAILPIPE FIRE & POWER LOSS', alertRed),
            _buildTextGroup(
              mainText: 'ENG TAILPIPE FIRE:',
              subItems: [
                'May be encountered during start or shutdown !',
                'Indicated by no EGT decrease after shutdown.',
                'Use QRH (cranking when N2 < 20%).',
                'Maintenance is due.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'ELEC POWER LOSS DURING FIRST ENGINE START:',
              subItems: [
                'Indicated by loss of ECAM DU\'s.',
                'Abort start.',
                'Cranking: use FCOM 3.',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. AUTO START (GROUND & IN FLIGHT) ---
            _buildSectionTitle('AUTO START PROCEDURES', timelineBlue),
            _buildTextGroup(
              mainText: 'AUTO START on Ground:',
              subItems: [
                'Alternatively IGN A or B.',
                'FADEC detects faulty start and aborts.',
                'Cranking = automatic.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'AUTO START in Flight:',
              subItems: [
                'Both IGN A & B.',
                'FADEC decides of starter assist or not.',
                'Auto start recommended for inflight starts.',
                'Consider manual start in case of: Engine stall, Engine EGT overlimit, Low start air pressure.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. MANUAL START PROCEDURES ---
            _buildSectionTitle('MANUAL START PROCEDURES', timelineBlue),
            _buildTextGroup(
              mainText: 'Manual Start Guidelines:',
              subItems: [
                'Both IGN A & B.',
                'FADEC limited authority on command of MASTER SWITCH or MAN START BUTTON:',
                ' - opening/closing of start valve;',
                ' - opening/closing of HP valve;',
                ' - control over IGN;',
                ' - automatic closure of start valve;',
                ' - automatic cutting off IGN.',
                'Passive monitoring: Correct ECAM warning but no automatic abort (except EGT overlimit on ground before 50% N2).',
                'In flight: manual start is always starter assist.',
                'Cranking (if required) not displayed on ECAM !',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 6. REMARKS ---
            _buildSectionTitle('REMARKS', warningOrange),
            _buildTextGroup(
              mainText: 'Important System Notes:',
              subItems: [
                'Switch ADR OFF with pushbutton.',
                'Switch IR OFF with rotary selector (ADR will be OFF as well).',
                'IR in ATT mode: Use QRH, Enter magnetic heading (STBY compass), Operative IR = TRUE HDG !',
                'Consider reset of flight computers to recover normal law.',
                'L/G GRAV EXT if ADR 1+3 fault. ATC ALT inop if ADR 1+2 fault.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 7. QUICK REFERENCES ---
            Text(
              'QUICK REFERENCES',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'KEY\'S:',
              subItems: [
                'Check MEL !',
                'Tripped C/B\'s may be reset on ground only in presence of maintenance !',
                'Manual start = only passive FADEC monitoring (use FCOM) !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Delay on push or start !',
                'Fire brigade if fire !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Limitations 3.01.70',
                'Abnorm/Emer 3.02.70',
                'Engine start 3.03.08',
                'Manual engine start 3.04.70',
                'Ignition & starting 1.70.80',
              ],
            ),

            const SizedBox(height: 40.0),

            // --- 8. Image Viewer (Full-Screen Zoomable) ---
            if (widget.imagePath != null && widget.imagePath!.isNotEmpty) ...[
              Text(
                'Infographic Reference:',
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, widget.imagePath!);
                },
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          widget.imagePath!,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: mainTextColor,
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Text(
                                'Image failed to load',
                                style: TextStyle(color: subTextColor),
                              ),
                            );
                          },
                        ),
                        Positioned(
                          bottom: 12,
                          right: 12,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.zoom_out_map,
                              color: Colors.white,
                              size: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
            ],
          ],
        ),
      ),
    );
  }

  // دالة الشاشة الكاملة للزوم
  void _showFullScreenImage(BuildContext context, String imageUrl) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Stack(
              children: [
                Center(
                  child: InteractiveViewer(
                    panEnabled: true,
                    scaleEnabled: true,
                    minScale: 1.0,
                    maxScale: 6.0,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  right: 16.0,
                  child: IconButton(
                    icon: const Icon(Icons.close,
                        color: Colors.white, size: 30.0),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // عنوان لكل قسم بلون مميز
  Widget _buildSectionTitle(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4.0,
            height: 20.0,
            color: color,
            margin: const EdgeInsets.only(top: 2.0),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // شكل النقط (Bullets)
  Widget _buildTextGroup({
    required String mainText,
    required List<String> subItems,
    Color? bulletColor,
  }) {
    final activeBulletColor = bulletColor ?? mainTextColor;

    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• ',
                style: TextStyle(
                  color: activeBulletColor,
                  fontSize: 18.0,
                  height: 1.3,
                ),
              ),
              Expanded(
                child: Text(
                  mainText,
                  style: TextStyle(
                    color: mainTextColor,
                    fontSize: 16.0,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6.0),
          ...subItems.map((item) => Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '- ',
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 16.0,
                        height: 1.4,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item,
                        style: TextStyle(
                          color: subTextColor,
                          fontSize: 15.0,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
