// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EngineFailureOnTakeoffWidget extends StatefulWidget {
  const EngineFailureOnTakeoffWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EngineFailureOnTakeoffWidgetState createState() =>
      _EngineFailureOnTakeoffWidgetState();
}

class _EngineFailureOnTakeoffWidgetState
    extends State<EngineFailureOnTakeoffWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed = const Color(0xFFEF4444); // أحمر للتحذيرات والأعطال
  final Color timelineBlue =
      const Color(0xFF3B82F6); // أزرق للمراحل وخطوات الصعود
  final Color warningOrange = const Color(0xFFF59E0B); // أصفر/برتقالي للملاحظات

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
                      'Engine failure on takeoff',
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
                      'ATA 76',
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

            // --- 1. ENG FAILURE & START VALVE FAULT ---
            _buildSectionTitle('ENGINE FAILURE & FAULTS', alertRed),
            _buildTextGroup(
              mainText: 'ENG 1(2) FAIL :',
              subItems: [
                'Do not interrupt ECAM if damage !',
                'Complete at least until AGENT 1 DISH.',
                'If no damage : consider relight in holding (use QRH).',
                'Secondary failures : ELEV page -> start APU.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'ENG 1(2) START VALVE FAULT :',
              subItems: [
                'Triggered because valve not open & other engine running.',
                'Disregard.',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. TAKEOFF PROFILE & PHASES ---
            _buildSectionTitle('TAKEOFF & CLIMB PROFILE', timelineBlue),
            _buildTextGroup(
              mainText: 'Rotation :',
              subItems: [
                'Rotate to SRS.',
                '12.5° if no SRS.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Positive Climb :',
              subItems: [
                'Gear up.',
                'Center beta target.',
                'TOGA.',
                'EFFRA / EFP.',
                'AP may be engaged > 100\' AGL & rudder trim applied.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: '400\' AGL & AC Stable :',
              subItems: [
                '« I/YOU FLY, ECAM ACTIONS ».',
                'PF : advise ATC (PANPAN).',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'At EFFRA (min. 1500\' AGL) :',
              subItems: [
                'PNF : stop ECAM.',
                'PF : « ACCELERATION ».',
                'Push V/S.',
                'Green dot becomes target speed.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Flaps & Clean Up :',
              subItems: [
                'F speed : flaps 1.',
                'S speed : flaps zero.',
                'At green dot & clean : Select attitude & pull.',
                'THR : MCT.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. EFFRA - EFP DEFINITIONS ---
            _buildSectionTitle('EFFRA & EFP CRITERIA', warningOrange),
            _buildTextGroup(
              mainText: 'EFFRA - EFP :',
              subItems: [
                'SD requires at least 3.3%',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'EFFRA :',
              subItems: [
                'min. 800 ft above RWY elevation.',
                'min. 300 ft above highest obstacle.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'EFP :',
              subItems: [
                'Must be flown first !',
                'V2 & 15° bank.',
                'Acceleration after turn & above EFFRA.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'Additional EFP Notes :',
              subItems: [
                'Keep V2.',
                'Accelerate after turn and above EFFRA.',
                'Above MSA : no limit.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. REMARKS ---
            _buildSectionTitle('REMARKS', warningOrange),
            _buildTextGroup(
              mainText: 'Engine Out & Bank Angle Limits:',
              subItems: [
                'A320 : CAT III single engine = CONF FULL (3.01.22).',
                'Bank angle:',
                ' - Manual flight : max. 15° below Vrmn (F-S green dot).',
                ' - AP/FD : max. 15° up to Vrmn - 10 kts, climb to 25° at Vrmn + 10 kts.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. QUICK REFERENCES ---
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
                'Consider use of AP & A/THR !',
                'Rudder trim !',
                'Use APU !',
                'Engine relight in hold (QRH) !',
                'Overweight landing : use QRH !',
                'Ldg : CONF 3 recommended !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Initial call : « Call you back ». !',
                'PANPAN !',
                'Ldg : fire brigade.',
                'TCAS on TA only.',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Limitations 3.01.70',
                'FCOM 3.02.10',
                'Abnorm/Emer 3.02.70',
                'Overweight landing 3.02.80',
                'FOM 8.1.12.5.1',
                'FMGC 1 engine out 4.04.30',
              ],
            ),

            const SizedBox(height: 40.0),

            // --- 6. Image Viewer (Full-Screen Zoomable) ---
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
