// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class DualEngineFailureWidget extends StatefulWidget {
  const DualEngineFailureWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _DualEngineFailureWidgetState createState() =>
      _DualEngineFailureWidgetState();
}

class _DualEngineFailureWidgetState extends State<DualEngineFailureWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed = const Color(
      0xFFEF4444); // أحمر للتحذيرات القصوى والحرائق والأعطال الخطيرة
  final Color timelineBlue =
      const Color(0xFF3B82F6); // أزرق للمراحل وخطوط الطيران
  final Color warningOrange =
      const Color(0xFFF59E0B); // أصفر/برتقالي للملاحظات والـ APU

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
                      'Dual engine failure',
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
                      color: alertRed.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: alertRed, width: 1.0),
                    ),
                    child: Text(
                      'ENG DUAL',
                      style: TextStyle(
                        color: alertRed,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- 1. INITIALLY & INITIAL REMARKS ---
            _buildSectionTitle('INITIALLY & GENERAL REMARKS', alertRed),
            _buildTextGroup(
              mainText: 'Initially Actions :',
              subItems: [
                '300 kts (optimum relight).',
                'Advise ATC !',
                'F/O : ECAM actions.',
                'Max. EGT 930°C.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'General Remarks :',
              subItems: [
                'In heavy rain, relight may take 3 minutes !',
                'In clear air, relight should be visible after 30 seconds.',
                'EGT 930° authorized by CFM1 after dual engine flame out.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. APU & ADIRS PROCEDURES ---
            _buildSectionTitle('APU & ADIRS PROCEDURES', warningOrange),
            _buildTextGroup(
              mainText: 'APU Management :',
              subItems: [
                'A319/321 : APU start required by ECAM.',
                'A320 :',
                ' - APU start not mentioned on ECAM !',
                ' - If no windmilling relight, descent to FL250 & start APU.',
                ' - When APU running, ECAM will be correct again.',
                ' - When below FL200 & APU running : ECAM asks APU BLEED ON.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'ADIRS :',
              subItems: [
                'If too long without AC power :',
                ' - IR 2+3 FAULT.',
                ' - Try ATT mode (QRH).',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. FLIGHT PROFILE & CABIN PRESSURE ---
            _buildSectionTitle('FLIGHT PROFILE & CABIN PRESSURE', timelineBlue),
            _buildTextGroup(
              mainText: 'If No Relight :',
              subItems: [
                'Speed = green dot.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'At FL 250 :',
              subItems: [
                'Start APU.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'CAB PRESS :',
              subItems: [
                'SYS 1 operating with BMER GEN.',
                'PACKS INOP.',
                'Cabin will depressurize :',
                ' - Not visible on ECAM !',
                ' - If gliding distance or obstacles not limiting : consider fast descent.',
                'OXY masks ON !',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. BELOW FL 200 & RELIGHT PROCEDURE ---
            _buildSectionTitle('BELOW FL 200 & ENGINE RELIGHT', alertRed),
            _buildTextGroup(
              mainText: 'Below FL 200 Actions :',
              subItems: [
                'APU BLEED ON.',
                'Engine inflight relight (ECAM or QRH ENG DUAL FAILURE).',
                'Start 1 engine at the time.',
                'Max. EGT 725°C.',
                'Reduce speed to green dot to improve gliding.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'When 1 Engine Is Started :',
              subItems: [
                'ECAM ENG DUAL FAILURE disappears.',
                'Continue in QRH.',
                'Start other engine, if unsuccessful ENG MASTER OFF.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. CRITICAL REMARKS ---
            _buildSectionTitle('CRITICAL REMARKS', warningOrange),
            _buildTextGroup(
              mainText: 'Important Warnings :',
              subItems: [
                'ECAM not perfect (especially A320) !',
                'Use QRH, don\'t rely only on ECAM !',
                'Consider wind & obstacles.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 6. QUICK REFERENCES ---
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
                'Do not confuse with GEN LOSS !',
                'Max. EGT starting = 930°C.',
                'Initial speed 300 kts.',
                'Packs INOP (CAB PRESS) !',
                'Below FL250 : start APU !',
                'Inflight relight : APU BLEED ON !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'FULL EMERGENCY !',
                'Vectors !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Limitations 3.01.70',
                'Abnorm/Emer 3.02.70',
              ],
            ),

            const SizedBox(height: 40.0),

            // --- 7. Image Viewer (Full-Screen Zoomable) ---
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
