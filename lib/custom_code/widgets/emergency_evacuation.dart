// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EmergencyEvacuation extends StatefulWidget {
  const EmergencyEvacuation({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EmergencyEvacuationState createState() => _EmergencyEvacuationState();
}

class _EmergencyEvacuationState extends State<EmergencyEvacuation> {
  // نفس الألوان الاحترافية (Dark Theme) المريحة للعين
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);
  final Color highlightColor =
      const Color(0xFF3B82F6); // لون أزرق خفيف لتمييز خطوات التقييم المهمة

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
                'EMERGENCY EVACUATION',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- 1. EVALUATION ---
            Text(
              'EVALUATION',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'Crucial Evaluation Steps:',
              subItems: [
                'Aircraft must remain stationary while evaluating.',
                'Evaluate while F/O completes checklist.',
                'Prepare QRH 1.05 if required and turn dome light on.',
              ],
              isHighlight: true,
            ),

            _buildTextGroup(
              mainText:
                  'Decide on gravity of situation (Life-threatening danger):',
              subItems: [
                'Gear collapse.',
                'Any sign of smoke or inextinguishable fire.',
                'Runway excursion.',
              ],
            ),

            _buildTextGroup(
              mainText: 'General Guidelines:',
              subItems: [
                'Do not hesitate.',
                'Do never interrupt an evacuation!',
                'Obtain outside information if possible: Fire brigade (if standby along RWY) or Tower.',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. EVACUATION ACTIONS ---
            Text(
              'EVACUATION ACTIONS',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'Phase 1: On Ground',
              subItems: [
                'Capt: Thrust levers idle (REV max), Stop aircraft.',
                'F/O: Monitor Spoilers, (REV), (AUTO BRK).',
                'F/O: Cancel audio, Inform ATC.',
              ],
            ),

            _buildTextGroup(
              mainText: 'Phase 2: Preparation',
              subItems: [
                'Capt: Aircraft stopped, REV stowed.',
                'Capt: "ATTN CABIN CREW ON STATION" x 2.',
                'Capt: "ECAM ACTIONS" or "ON GND EMER/EVAC XL".',
                'F/O: Check REV stowed.',
                'F/O: "MAYDAY" on Capt command.',
              ],
            ),

            _buildTextGroup(
              mainText: 'Phase 3: Evacuation',
              subItems: [
                'Capt: "EVACUATION" to F/O.',
                'Capt: Monitor ENG MASTERS OFF.',
                'Capt: "EVACUATION" x 3, EVAC SW ON, Silence signal in cockpit.',
                'F/O: Complete up to ATC, Continue EMER/EVAC XL.',
                'F/O: Agents not required if no failure, Inform ATC, Assist pax.',
              ],
            ),

            _buildTextGroup(
              mainText: 'If EMER EVAC not required:',
              subItems: [
                'Announce: « KEEP YOUR SEATS - ALL NORMAL »',
              ],
              isHighlight: true, // تمييز الجملة دي عشان مهمة
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. POST-EVACUATION DUTIES ---
            Text(
              'POST-EVACUATION DUTIES',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'CAPTAIN:',
              subItems: [
                'Verify all items on checklist performed correctly.',
                'Leave cockpit as last person.',
                'Leave aircraft as last person: Go through cabin as far as possible aft.',
                'Check for remaining persons.',
                'Leave aircraft through aft door.',
              ],
            ),

            _buildTextGroup(
              mainText: 'F/O:',
              subItems: [
                'Proceed to cabin.',
                'Evacuate through suitable exit.',
                'Assist on ground & direct pax away from aircraft.',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. QUICK REFERENCES ---
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
                'Do not hesitate !',
                'Never interrupt EVAC !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                '« MAYDAY » if expecting EVAC.',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'Abnorm/Emer 3.02.80',
                'Detailed EVAC 3.02.90',
                'SN Non-normal SOP',
                'FOM 8.3.16',
              ],
            ),

            const SizedBox(height: 40.0),

            // --- 5. Image Viewer (Full-Screen Zoomable) ---
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
    bool isHighlight = false, // خاصية التمييز اللوني
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
                  color: isHighlight ? highlightColor : mainTextColor,
                  fontSize: 18.0,
                  height: 1.3,
                ),
              ),
              Expanded(
                child: Text(
                  mainText,
                  style: TextStyle(
                    color: isHighlight ? highlightColor : mainTextColor,
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
