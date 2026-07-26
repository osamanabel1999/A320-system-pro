// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class RejectedTakeOff extends StatefulWidget {
  const RejectedTakeOff({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _RejectedTakeOffState createState() => _RejectedTakeOffState();
}

class _RejectedTakeOffState extends State<RejectedTakeOff> {
  // نفس الألوان الاحترافية المريحة للعين (Dark Theme)
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);
  final Color highlightColor =
      const Color(0xFFEF4444); // لون أحمر خفيف للتحذيرات المهمة

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
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Text(
                'REJECTED T/O',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- Procedure Details ---
            _buildTextGroup(
              mainText: 'AUTO BRK MAX',
              subItems: [
                'Triggered by ground spoilers extension.',
                'Disarming possible by: selecting pushbutton OFF, disarming ground spoilers, or pushing a pedal.',
              ],
            ),

            _buildTextGroup(
              mainText: 'T/O CONF Warning Triggered By:',
              subItems: [
                'Stabilizers not in T/O config.',
                'Pitch trim not in T/O range.',
                'Rudder trim not in T/O range.',
                'Speedbrakes not retracted.',
                'Slats/ck fwd. (identiv. by takeover).',
                'Brakes hot.',
                'Doors.',
                'Parking brake ON.',
                'Flex temp not set.',
                'Note: Not triggered by T/O CONF test.',
              ],
              isWarning: true, // هيدي لمسة حمراء خفيفة للعنوان ده عشان يميزه
            ),

            _buildTextGroup(
              mainText: 'High Speed Regime (80 kts - V1) - Abort ONLY if:',
              subItems: [
                'Loss of thrust.',
                'Aircraft expected not to fly.',
                'ECAM: ENG FIRE, ENG FAIL, CONFIG, ENG OIL LO PR, L+R ELEV FAULT.',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- Actions Table (Converted to Text) ---
            Text(
              'REJECTED T/O ACTIONS',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: '1. Decision Phase',
              subItems: [
                'Capt: Announce "STOP".',
                'Capt: Thrust levers idle, REV max.',
                'F/O: Monitor Spoilers, REV, AUTO BRK.',
                'F/O: Cancel audio, Inform ATC.',
              ],
            ),

            _buildTextGroup(
              mainText: '2. Preparation Phase',
              subItems: [
                'Capt: Aircraft stopped, REV stowed.',
                'Capt: "ATTN CABIN CREW" ON STANDBY x 2.',
                'Capt: "ECAM ACTIONS" or "ON GND EMER/EVAC X L".',
                'F/O: Check REV stowed.',
                'F/O: "MAYDAY" on Capt command.',
              ],
            ),

            _buildTextGroup(
              mainText: '3. Evacuation / Normalization',
              subItems: [
                'Evacuation: See \'EMER EVAC\' procedure.',
                'If EMER EVAC not required: Announce « KEEP YOUR SEATS - ALL NORMAL ».',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- Additional Info ---
            Text(
              'ADDITIONAL INFO & REMARKS',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'Important Guidelines:',
              subItems: [
                'Position aircraft to keep possible fire away from fuselage.',
                'The aircraft should remain stationary while evaluating.',
                'Dome light is the only available light source on batteries.',
                'Do not clear RWY unless absolutely safe!',
                'Remark: Type failure slightly prior to V1 : CONTINUE !',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- Quick References ---
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
              mainText: 'KEYS:',
              subItems: [
                'First STOP the aircraft !',
                'No rejected T/O for ELEC !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'F/O: « STOPPING ».',
                '« MAYDAY » if expecting EVAC.',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'Abnorm/Emer 3.02.10',
                'SN Non-normal SOP',
                'Autobrake system 1.32.30',
                'Configuration warnings 1.31.15',
                'Flight phases 1.31.15',
              ],
            ),

            const SizedBox(height: 40.0),

            // --- Image Viewer (Full-Screen Zoomable) ---
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

              // GestureDetector لفتح الصورة في شاشة كاملة
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
                        // أيقونة العدسة للزوم
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

  // شكل النقط (Bullets)
  Widget _buildTextGroup({
    required String mainText,
    required List<String> subItems,
    bool isWarning = false, // خاصية إضافية لتمييز التحذيرات
  }) {
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
                  color: isWarning ? highlightColor : mainTextColor,
                  fontSize: 18.0,
                  height: 1.3,
                ),
              ),
              Expanded(
                child: Text(
                  mainText,
                  style: TextStyle(
                    color: isWarning ? highlightColor : mainTextColor,
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
