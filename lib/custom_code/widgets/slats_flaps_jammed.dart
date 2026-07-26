// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class SlatsFlapsJammed extends StatefulWidget {
  const SlatsFlapsJammed({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _SlatsFlapsJammedState createState() => _SlatsFlapsJammedState();
}

class _SlatsFlapsJammedState extends State<SlatsFlapsJammed> {
  // الألوان الأساسية للتصميم (Dark Theme)
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان تمييز خفيفة للأقسام حسب الصورة
  final Color landingColor = const Color(0xFFF59E0B); // برتقالي/أصفر
  final Color slatsColor = const Color(0xFFEF4444); // أحمر
  final Color flapsColor = const Color(0xFF8B5CF6); // بنفسجي
  final Color infoColor = const Color(0xFF3B82F6); // أزرق

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
                'SLATS / FLAPS JAMMED',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- 1. LANDING WITH SLATS OR FLAPS JAMMED ---
            _buildSectionTitle(
                'LANDING WITH SLATS OR FLAPS JAMMED', landingColor),
            _buildTextGroup(
              mainText: 'General Rules:',
              subItems: [
                'Use QRH because FCOM is very confusing !',
                'Fly SELECTED SPEED !',
                'Establish LDG CONF in holding using QRH !',
                'Speedtape : only VLS correct !',
                'Always ALTN LAW & DIRECT LAW when L/G DN (except if due to WTB action).',
              ],
              bulletColor: landingColor,
            ),
            _buildTextGroup(
              mainText: 'Determine:',
              subItems: [
                'Landing CONF.',
                'VAPP.',
                'LDG DIST.',
                'G/A CONF & maximum speed.',
              ],
              bulletColor: landingColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. SLATS JAMMED ---
            _buildSectionTitle('SLATS JAMMED', slatsColor),
            _buildTextGroup(
              mainText: 'CONF 1:',
              subItems: [
                'Flaps do not extend in CONF 1.',
                'Aircraft remains clean until CONF 2 !',
                'High stall speed !',
              ],
              bulletColor: slatsColor,
            ),
            _buildTextGroup(
              mainText: 'CONF 2:',
              subItems: [
                'Small speed margin !',
                'Do not hesitate between CONF 1 & 2.',
                'Ask straight & level flight between CONF 1 & 2.',
              ],
              bulletColor: slatsColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. FLAPS JAMMED ---
            _buildSectionTitle('FLAPS JAMMED', flapsColor),
            _buildTextGroup(
              mainText: 'Important:',
              subItems: [
                'High altitudes when slats extended.',
              ],
              bulletColor: flapsColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. SPEEDTAPE INFORMATION ---
            _buildSectionTitle('SPEEDTAPE INFORMATION', infoColor),
            _buildTextGroup(
              mainText: 'Indications validity:',
              subItems: [
                'VLS always correct.',
                'VFE (red tape) false but aural overspeed warning correct.',
                'Green dot – S – F speed false, coming from flap LEVER.',
                'VFE next from flap LEVER (use placard speeds).',
              ],
              bulletColor: infoColor,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. ADDITIONAL INFO & PITCH ATTITUDES ---
            _buildSectionTitle('ADDITIONAL INFORMATION', infoColor),
            _buildTextGroup(
              mainText: 'Flap Lever & Slats Configuration:',
              subItems: [
                'Ldg CONF (QRH 2.26) is based on FLAP LEVER position !',
                'Slats = 3 corresponds to FLAP LEVER in position 3 (22° slats).',
                'Slats > 3 corresponds to FLAP LEVER in position FULL (27° slats).',
                'Remark: Degrees valid for A320 only.',
                'Note: Unusual pitch attitudes depend on slats position (low pitch for Slats > 3).',
              ],
              bulletColor: infoColor,
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
                'Selected speed & A/THR OFF !',
                'Speedtape : only VLS correct !',
                'ALTN law & DIRECT law when L/G down (except if due to WTB) !',
                'Unfamiliar attitudes on final !',
                'Increased fuel consumption !',
                'Maximum FL 200 !',
                'Use QRH !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Higher touchdown speed.',
                'Prepare towing (flat tyres) !',
                'Fire brigade.',
                'Holding straight & level when extending slats / flaps.',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'Limitations 3.01.20',
                'Limitations 3.01.27',
                'Abnorm/Emer 3.02.10 & 27',
                'QRH',
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
