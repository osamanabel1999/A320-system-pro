// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EcamProcedureOnGround extends StatefulWidget {
  const EcamProcedureOnGround({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EcamProcedureOnGroundState createState() => _EcamProcedureOnGroundState();
}

class _EcamProcedureOnGroundState extends State<EcamProcedureOnGround> {
  // نفس الألوان الاحترافية المريحة للعين (Dark Theme)
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
                'ECAM PROCEDURE ON GROUND',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- Procedure Steps (Merged Flowchart & Steps) ---
            _buildTextGroup(
              mainText: '1. IMMEDIATE ACTION (RED or AMBER FAILURE)',
              subItems: [
                'Stop aircraft, set parking brake & check pressure !',
                'Capt. = PF on ground.',
              ],
            ),

            _buildTextGroup(
              mainText: '2. ECAM ACTIONS (\'ECAM ACTION\' or QRH)',
              subItems: [
                'Task distribution by Capt. : « ECAM ACTIONS ».',
                'Capt. = PF on ground.',
                'If no ECAM : check QRH.',
                'Advise ATC, mechanic and CC.',
              ],
            ),

            _buildTextGroup(
              mainText: '3. ECAM MEMO (STATUS page in view)',
              subItems: [
                'Check OEB\'s affecting ECAM.',
                'Consider reset via C/B or pushbutton : use QRH !',
              ],
            ),

            _buildTextGroup(
              mainText: '4. ANALYSE STATUS PAGE',
              subItems: [
                'Analyse STATUS page.',
                'Read expanded (FCOM 1-2-3-4).',
                'Check MEL (advise outstation or base if required).',
              ],
            ),

            _buildTextGroup(
              mainText: '5. FINAL STEPS (Operational summary)',
              subItems: [
                'Check weather – notams – fuel.',
                'Summarize – Involve F/O – Decide – Announce inside & outside.',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- Quick References (KEYS, ATC, REFS) ---
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
                'Stop the A/C !',
                'MEL !',
                'Destination !',
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
              mainText: 'REFS:',
              subItems: [
                'SN Non-normal SOP',
                'FCOM 3.02.01',
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

            // --- Image Viewer (Full-Screen Zoomable) ---
            if (widget.imagePath != null && widget.imagePath!.isNotEmpty) ...[
              Text(
                'Flowchart Reference:',
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

  // الاختصارات الخاصة بالصورة دي
  Widget _buildAbbreviationsSection() {
    final Map<String, String> col1 = {
      'C/B': 'Circuit Breaker',
      'CC': 'Cabin Crew',
      'MEL': 'Minimum Equipment List',
      'OEB': 'Onboard Equipment Book',
    };

    final Map<String, String> col2 = {
      'PF': 'Pilot Flying',
      'QRH': 'Quick Reference Handbook',
      'SOP': 'Standard Operating Procedure',
      'TN': 'Technical Note',
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
