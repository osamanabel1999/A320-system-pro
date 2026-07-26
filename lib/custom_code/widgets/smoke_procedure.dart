// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class SmokeProcedure extends StatefulWidget {
  const SmokeProcedure({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _SmokeProcedureState createState() => _SmokeProcedureState();
}

class _SmokeProcedureState extends State<SmokeProcedure> {
  // الألوان الأساسية للتصميم الاحترافي (Dark Theme)
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان تمييز خفيفة لكل قسم عشان تطابق الصورة وتريح العين في البحث السريع
  final Color avionicsColor = const Color(0xFFEF4444); // أحمر
  final Color airCondColor = const Color(0xFF3B82F6); // أزرق
  final Color removalColor = const Color(0xFF10B981); // أخضر
  final Color cargoColor = const Color(0xFF8B5CF6); // بنفسجي
  final Color approachColor = const Color(0xFFF97316); // برتقالي

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
                'SMOKE',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- 1. AVIONICS SMOKE (Red) ---
            _buildSectionTitle('SMOKE AVIONICS SMOKE', avionicsColor),
            _buildTextGroup(
              mainText:
                  'May be triggered by AIR COND smoke entering avionics bay:',
              subItems: [
                'Ask purser about smoke condition in cabin.',
                'If a lot of smoke in cabin : suspect AIR COND SMOKE.',
                'Apply AIR COND SMOKE procedure (QRH).',
              ],
              bulletColor: avionicsColor,
            ),
            _buildTextGroup(
              mainText: 'If AVIONICS SMOKE confirmed, apply ECAM:',
              subItems: [
                'Do not restore VENT if smoke disappears !',
                'Do not wait too long to isolate equipment (ECAM = 5 min.) !',
                'Result will be ELEC EMER CONFIG (except fuel pumps) !',
                'All remaining equipment supplied through CB on OVHD.',
                'Restore normal ELEC before L/G extension -> smoke !',
              ],
              bulletColor: avionicsColor,
            ),
            _buildTextGroup(
              mainText:
                  'A320 only: RAT stalls & EMER GEN disconnects at L/G down.',
              subItems: [
                'If normal ELEC not recovered before L/G DN:',
                'FMGC will be lost (RMP only) !',
              ],
              bulletColor: avionicsColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. AIR COND SMOKE (Blue) ---
            _buildSectionTitle('AIR COND SMOKE (not on ECAM)', airCondColor),
            _buildTextGroup(
              mainText: 'Identification & Actions:',
              subItems: [
                'Confirmed by a lot of smoke in cabin (check with purser).',
                'Keep cockpit door closed and protected with towels.',
                'Use QRH ! Wait a few minutes after switching pack 1 off to see result.',
                'No smoke removal, better = LAND ASAP !',
              ],
              bulletColor: airCondColor,
            ),
            _buildTextGroup(
              mainText:
                  'AIR COND SMOKE will probably trigger other smoke alarms:',
              subItems: [
                'Lavatories',
                'Cargo',
                'Avionics',
              ],
              bulletColor: airCondColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. SMOKE REMOVAL (Green) ---
            _buildSectionTitle('SMOKE REMOVAL', removalColor),
            _buildTextGroup(
              mainText: 'Guidelines:',
              subItems: [
                'Apply only if dense or toxic smoke.',
                'Do not apply this for AIR COND SMOKE.',
                'Generally it is better to LAND ASAP !',
              ],
              bulletColor: removalColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. CARGO SMOKE (Purple) ---
            _buildSectionTitle('SMOKE FWD or AFT CARGO SMOKE', cargoColor),
            _buildTextGroup(
              mainText: 'Actions:',
              subItems: [
                '1 bottle for both fwd & aft cargo.',
                'Advise ground staff of potential fire before opening any door !',
                'Do not open cargo until: pax out of aircraft & fire brigade present.',
              ],
              bulletColor: cargoColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. APPROACH & LANDING (Orange) ---
            _buildSectionTitle('APPROACH & LANDING', approachColor),
            _buildTextGroup(
              mainText: 'Preparation:',
              subItems: [
                'Dimmed cockpit lights (except displays).',
                'PF on instruments / PNF crosschecks procedure.',
                'If available use both AP + A/THR and AUTO BRK.',
                'ON GND EMER EVAC after landing.',
              ],
              bulletColor: approachColor,
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
              mainText: 'KEYS:',
              subItems: [
                'Personal protection (100%) !',
                'Never OXY to pax (= mixed) !',
                'LAND ASAP - no holding !',
                'EMER EVAC after landing !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Full EMER !',
                'Radar vectors !',
                'Committed to land !',
                'Runway blocked !',
                'EMER EVAC after landing !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'Abnorm/Emer 3.02.26',
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

  // عنوان لكل قسم بلون مميز
  Widget _buildSectionTitle(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Container(
            width: 4.0,
            height: 20.0,
            color: color,
          ),
          const SizedBox(width: 8.0),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
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
    Color? bulletColor, // لتغيير لون النقطة الأساسية لو حابين
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
