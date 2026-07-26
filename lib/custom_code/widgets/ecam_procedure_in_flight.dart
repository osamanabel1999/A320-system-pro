// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EcamProcedureInFlight extends StatefulWidget {
  const EcamProcedureInFlight({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EcamProcedureInFlightState createState() => _EcamProcedureInFlightState();
}

class _EcamProcedureInFlightState extends State<EcamProcedureInFlight> {
  // ألوان مطابقة لتصميم الـ Clean Text (Dark Theme)
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

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
                'ECAM PROCEDURE IN FLIGHT',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- Procedure Steps (Text Only Layout) ---
            _buildTextGroup(
              mainText: 'RED FAILURE or AMBER FAILURE',
              subItems: [
                'React when failure appears.',
                'Unimportant failures are inhibited!',
              ],
            ),

            _buildTextGroup(
              mainText: 'Flight path > 400\' AGL, L/G retraction',
              subItems: [
                'Initiate gear retraction.',
                'Consider use of TOGA.',
                'AP may be used from 100\' AGL.',
              ],
            ),

            _buildTextGroup(
              mainText: '\'ECAM ACTION\' or QRH',
              subItems: [
                'Task distribution by Capt. : « I/YOU FLY, ECAM ACTIONS ».',
                'If no ECAM : check QRH.',
                'PF has thrust levers, flight path, navigation and ATC.',
              ],
            ),

            _buildTextGroup(
              mainText:
                  'Normal actions required: \'STOP ECAM\', When possible: \'CONTINUE ECAM\'',
              subItems: [
                'Do not interrupt ECAM actions too long!',
                'Engine severe damage : at least continue till AGENT 1 DISH.',
              ],
            ),

            _buildTextGroup(
              mainText:
                  'STATUS page in view = STOP. Consider AP. Transfer controls to F/O',
              subItems: [
                'Use maximum automation.',
                'Transfer controls to F/O.',
                'Check Autoflight – Fuel – Systems.',
              ],
            ),

            _buildTextGroup(
              mainText: 'ECAM Memo, OEB (TN), Reset (QRH) - C/B - Relight',
              subItems: [
                'Equivalent of \'After T/O checklist\'.',
                'Check OEB\'s affecting ECAM.',
                'Consider reset via C/B or pushbutton : use QRH!',
              ],
            ),

            _buildTextGroup(
              mainText:
                  'MEMO SHEET: Analyse STATUS page, QRH / Operational summary',
              subItems: [
                'Analyse STATUS page first, summarize on memo sheet.',
                'Read expanded (FCOM 1-2-3-4), especially for ELEC & instruments.',
                'Check MEL, even in flight (return to base is better than stuck in outstation).',
                'Consider status of CONF, gear, brakes, REV and NWS for suitable airport.',
                'Check weather – notams – fuel.',
                'Summarize – Involve F/O – Decide – Announce inside & outside.',
                'Cabin : Nature – Intention – Time – Specials.',
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
                'First fly the A/C !',
                'Use AP & A/THR !',
                'No rush !',
                'Use FCOMs !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'MAYDAY when required and ECAM completed !',
                'PAN PAN can be used immediately.',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'SN Non-normal SOP D1.3',
                'FCOM 3.02.01',
                'FOM 8.3.16.2.3',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- Abbreviations ---
            Text(
              'ABBREVIATIONS',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            _buildAbbreviationsSection(),

            const SizedBox(height: 40.0),

            // --- Image Viewer (Profile) ---
            if (widget.imagePath != null && widget.imagePath!.isNotEmpty) ...[
              Text(
                'Profile:',
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
                  height: 350.0,
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
                        // أيقونة توضح للمستخدم إنه يقدر يضغط للزوم
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

  // دالة لفتح الصورة في شاشة كاملة للزووم براحتك
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
                    maxScale: 6.0, // زووم قوي جداً
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // زر الإغلاق للرجوع للصفحة
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

  // الويدجت المسئول عن شكل النقط
  Widget _buildTextGroup({
    required String mainText,
    required List<String> subItems,
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
                  color: mainTextColor,
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

  // اختصارات الطيران
  Widget _buildAbbreviationsSection() {
    final Map<String, String> col1 = {
      'AGL': 'Above Ground Level',
      'AP': 'Autopilot',
      'A/THR': 'Autothrust',
      'ATC': 'Air Traffic Control',
      'C/B': 'Circuit Breaker',
      'OEB': 'Onboard Equipment Book',
      'PF': 'Pilot Flying',
      'QRH': 'Quick Reference Handbook',
    };

    final Map<String, String> col2 = {
      'F/O': 'First Officer',
      'MEL': 'Minimum Equipment List',
      'NWS': 'Nose Wheel Steering',
      'REV': 'Reverse Thrust',
      'SOP': 'Standard Operating Procedure',
      'TN': 'Technical Note',
      'TOGA': 'Take Off / Go Around',
    };

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _buildAbbrevColumn(col1)),
        const SizedBox(width: 10.0),
        Expanded(child: _buildAbbrevColumn(col2)),
      ],
    );
  }

  Widget _buildAbbrevColumn(Map<String, String> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 14.0, height: 1.4),
              children: [
                TextSpan(
                  text: '${entry.key}: ',
                  style: TextStyle(
                    color: mainTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: entry.value,
                  style: TextStyle(
                    color: subTextColor,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
