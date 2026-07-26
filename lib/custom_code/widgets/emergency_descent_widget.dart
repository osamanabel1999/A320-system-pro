// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EmergencyDescentWidget extends StatefulWidget {
  const EmergencyDescentWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EmergencyDescentWidgetState createState() => _EmergencyDescentWidgetState();
}

class _EmergencyDescentWidgetState extends State<EmergencyDescentWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed =
      const Color(0xFFEF4444); // أحمر للتحذيرات القصوى والـ Mayday
  final Color timelineBlue =
      const Color(0xFF3B82F6); // أزرق للمراحل وخطوط النزول
  final Color warningOrange =
      const Color(0xFFF59E0B); // أصفر/برتقالي للملاحظات والـ A320 Remarks

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
                      'Emergency descent',
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
                      'CAB ALT',
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

            // --- 1. CAPT & F/O ACTIONS ---
            _buildSectionTitle('CAPT & F/O IMMEDIATE ACTIONS', alertRed),
            _buildTextGroup(
              mainText: 'Capt :',
              subItems: [
                '« EMER DESCENT » +PA « RAPID DESC ».',
                'Altitude 2 turns & pull.',
                'Hdg 2 turns & pull.',
                'Speed pull.',
                'Read FMA.',
                'Speedbrakes 1/2, then FULL*.',
                'Adjust ALT - HDG - SPFFD.',
                '« ECAM ACTIONS ».',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'F/O :',
              subItems: [
                'ATC :',
                ' - MAYDAY.',
                ' - Altitude & radar HDG.',
                'Ldg lights ON.',
                'Verify safety altitude.',
                '« ECAM ACTIONS ».',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. DESCENT PHASES & FL 250 ---
            _buildSectionTitle('DESCENT PHASES & FL 250', timelineBlue),
            _buildTextGroup(
              mainText: 'Low Speed EMER DESC (FL 250) :',
              subItems: [
                'Speed < VS + VLE.',
                'Altitude < FL 250.',
                'L/G DN.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Oxygen Profiles :',
              subItems: [
                'Pax OXY > FL 140 !',
                'Cockpit OXY > FL 100 !',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Before Level Off (2000 ft before) :',
              subItems: [
                'Reduce speed.',
                'Retract speedbrakes.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. FL 100 OR LOWER ACTIONS ---
            _buildSectionTitle('FL 100 OR LOWER ACTIONS', timelineBlue),
            _buildTextGroup(
              mainText: 'Actions at FL 100 :',
              subItems: [
                'OXY OFF (1 by 1).',
                'Close left OXY MASK door.',
                'Transfer controls to F/O.',
                'Diversion instructions to F/O.',
                'Inform with purser about situation in cabin.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. OBSTACLE & DIVERSION ---
            _buildSectionTitle(
                'OBSTACLE & DIVERSION PROCEDURES', warningOrange),
            _buildTextGroup(
              mainText: 'If Obstacle Limited :',
              subItems: [
                'Leave obstacle area ASAP.',
                'Maintain highest possible speed.',
                'Pax OXY = time limited !',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'Diversion to Nearest Suitable Airport :',
              subItems: [
                'Limit V/S to max. 500 fpm.',
                'Medical emergency possible !',
                'Group pax requiring assistance at 1 door.',
                'Inform ATC to position stairs & ambulances at that door ASAP after leaving RWY !',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. REMARK A320 ONLY ---
            _buildSectionTitle('REMARK A320 ONLY', warningOrange),
            _buildTextGroup(
              mainText: 'A320 Specific Limitations :',
              subItems: [
                'A320 is limited to 1/2 speedbrakes with AP ON.',
                'Discarded AP for steeper descent.',
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
                'Personal protection !',
                'Use AP !',
                'If structural damage suspected : maintain actual IAS !',
                'CPC reset with C/B allowed !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'MAYDAY !',
                'Ask altitude & radar HDG !',
                'Ambulances & stairs along RWY !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Limitations 3.01.21',
                'Abnorm/Emer 3.02.80',
                'S/N normal SOP',
                'Flight without press 2.04.20',
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
