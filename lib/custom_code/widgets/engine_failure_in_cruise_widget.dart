// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EngineFailureInCruiseWidget extends StatefulWidget {
  const EngineFailureInCruiseWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EngineFailureInCruiseWidgetState createState() =>
      _EngineFailureInCruiseWidgetState();
}

class _EngineFailureInCruiseWidgetState
    extends State<EngineFailureInCruiseWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed = const Color(0xFFEF4444); // أحمر للتحذيرات والأعطال
  final Color timelineBlue =
      const Color(0xFF3B82F6); // أزرق للمراحل والاستراتيجيات
  final Color warningOrange =
      const Color(0xFFF59E0B); // أصفر/برتقالي للملاحظات والـ FMGC

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
              child: Text(
                'Engine failure in cruise',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- 1. PROCEDURE ---
            _buildSectionTitle('PROCEDURE', alertRed),
            _buildTextGroup(
              mainText: 'Initial Actions:',
              subItems: [
                'ECAM actions.',
                'MCT & A/THR OFF.',
                'Select speed according strategy & pull : Green dot or M.78/300kts.',
                'Select attitude & pull : Check obstacles, Verify PROG page, ATC.',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. STANDARD STRATEGY ---
            _buildSectionTitle('STANDARD STRATEGY', timelineBlue),
            _buildTextGroup(
              mainText: 'Before Descent :',
              subItems: [
                '1. Start ECAM actions and simultaneously set MCT.',
                '2. A/THR : OFF.',
                '3. Determine cruise FL (LRC ceiling from 3.06..20).',
                '4. Notify ATC.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Descent M.78 / 300KT :',
              subItems: [
                '1. SPD on FCU : M.78/300KT - PULL.',
                '2. ALT on FCU : SET LRC CEILING / PULL.',
                'Note: The thrust is fixed at MCT, the speed is controlled by the elevator.',
                '* If V/S becomes < 500 feet/minute select V/S mode.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Cruise Long Range Speed :',
              subItems: [
                '1. SPD on FCU : SET ACCORDING TO 3.06..30 p6 TO 11.',
                '2. A/THR : ON.',
                'Note: The speed is controlled by the A/THR.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Descent to Landing :',
              subItems: [
                'IDLE | M.78/300KT/250KT.',
                'Fuel and time check (3.06..30 p6 & p13).',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. OBSTACLE STRATEGY ---
            _buildSectionTitle('OBSTACLE STRATEGY', warningOrange),
            _buildTextGroup(
              mainText: 'Before Descent :',
              subItems: [
                '1. Start ECAM actions and simultaneously set MCT.',
                '2. A/THR : OFF.',
                '3. Accelerate to green dot speed.',
                '4. Determine cruise FL (ceiling at green dot speed from 3.06..40).',
                '5. Notify ATC.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'Drift Down :',
              subItems: [
                '1. SPD on FCU : GREEN DOT - PULL.',
                '2. ALT on FCU : SELECTED CRUISE FL. - PULL.',
                'Note: The thrust is fixed at MCT, the speed is controlled by the elevator.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'Obstacle & Clearance Handling :',
              subItems: [
                'If obstacle problem exists : - CONTINUE DRIFT DOWN PROCEDURE.',
                'When obstacles are cleared : - ACCELERATE TO LONG RANGE SPEED.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. FMGC & AP/FD ---
            _buildSectionTitle('FMGC & AP/FD', warningOrange),
            _buildTextGroup(
              mainText: 'FMGC Pages Configuration:',
              subItems: [
                'PROG page : REC MAX EO ALT = LRC (A/I OFF).',
                'PERF page : Relevant phase automatically called up.',
                'Managed speed adapted:',
                ' - CLB = green dot.',
                ' - ALT = EO CRZ SPD according actual altitude.',
                ' - CRZ = EO CRZ M or actual speed if higher.',
                ' - DES = unchanged (actual or speed limit if any).',
                ' - APPR = VAPP.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'AP / FD Behavior:',
              subItems: [
                'Reverts to OP CLB (if in CLB) or V/S (if in DES).',
                'Bank angle limited to 15° below man. speeds.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. CEILINGS TABLE ---
            Text(
              'AIRCRAFT CEILINGS REFERENCE',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: subTextColor.withOpacity(0.2)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: timelineBlue.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text('Type',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold))),
                        Expanded(
                            child: Text('Gross ceiling',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold))),
                        Expanded(
                            child: Text('LRC ceiling',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                  _buildTableRow('A319 - 68T', 'FL240', 'FL220', false),
                  _buildTableRow('A320 - 74T', 'FL200', 'FL200', true),
                  _buildTableRow('A321 - 80T', 'FL200', 'FL180', false),
                ],
              ),
            ),

            const SizedBox(height: 30.0),
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
                'Initially MCT & A/THR OFF !',
                'Select speed & pull.',
                'Select attitude & pull.',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'PANPAN !',
                'Ask initially FL200 !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Single engine ops 3.06.00',
                'Ceilings 3.06.20',
                'MCDU pages 4.03.20',
                'FMGC engine out 4.04.30',
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

  // دالة صف الجدول (Table Row)
  Widget _buildTableRow(
      String col1, String col2, String col3, bool isAlternate) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color:
            isAlternate ? Colors.white.withOpacity(0.03) : Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
              child: Text(col1,
                  style: TextStyle(color: mainTextColor, fontSize: 14.0))),
          Expanded(
              child: Text(col2,
                  style: TextStyle(color: mainTextColor, fontSize: 14.0))),
          Expanded(
              child: Text(col3,
                  style: TextStyle(color: mainTextColor, fontSize: 14.0))),
        ],
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
