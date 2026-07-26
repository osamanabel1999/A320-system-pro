// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class DualHydBYFailure extends StatefulWidget {
  const DualHydBYFailure({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _DualHydBYFailureState createState() => _DualHydBYFailureState();
}

class _DualHydBYFailureState extends State<DualHydBYFailure> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed = const Color(0xFFEF4444); // أحمر للتحذيرات الخطيرة
  final Color timelineBlue = const Color(0xFF3B82F6); // أزرق لخطوات الهبوط
  final Color highlightYellow = const Color(0xFFF59E0B); // أصفر للـ G/A

  // لون مخصص يميز الـ Blue + Yellow
  final Color byAccent =
      const Color(0xFF8B5CF6); // لون بنى/نيلي يعبر عن دمج الأزرق والأصفر

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DUAL HYD FAILURE',
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // تمييز الـ B+Y SYS LOW بشكل واضح ولون مختلف عن البقية
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 6.0),
                    decoration: BoxDecoration(
                      color: byAccent.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: byAccent, width: 1.5),
                    ),
                    child: Text(
                      'HYD B + Y SYS LO PR',
                      style: TextStyle(
                        color: byAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- 1. SYSTEM LIMITATIONS (Red Alert) ---
            _buildSectionTitle('SYSTEM LIMITATIONS & WARNINGS', alertRed),
            _buildTextGroup(
              mainText: 'HYD B+Y SYS LO PR:',
              subItems: [
                'Only 1 elevator – few spoilers – only REV 1 !',
                'No AP – A/THR unreliable.',
                'No N.W. STEER (do not reset GRAV EXT on ground – see remark in QRH).',
                'L/G GRAV EXT to preserve G HYD – no L/G retraction.',
                'No EMER GEN.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'Flight & Braking Capacities:',
              subItems: [
                'Braking capacities OK (G HYD available) ! NORM brakes only – REV 1 only – AUTO BRK operative.',
                'Flying capacities OK (except only 1 ELEV) ! Only 1 elevator – few spoilers – NORMAL LAW remains.',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. PREPARATION & HOLDING ---
            _buildSectionTitle('1. HOLDING & PREPARATION', timelineBlue),
            _buildTextGroup(
              mainText: 'Analysis (step 1-2-3) completed:',
              subItems: [
                'QRH procedures prepared.',
                'Ldg distance & VAPP calculated.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Still in holding:',
              subItems: [
                'Summarize APPR-LDG-G/A to F/O.',
                'Consider reset (OVHT/LO AIR PR).',
                'F/O: APPR preparation – briefing.',
                'Establish landing CONF & VAPP.',
                'Use AUTO BRK MED.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 20.0),

            // --- 3. APPROACH PROFILE ---
            _buildSectionTitle('2. APPROACH PROFILE', timelineBlue),
            _buildTextGroup(
              mainText: 'Initial Approach:',
              subItems: [
                'Normal vectors.',
                'Normal LOC/GS interception.',
                '10 nm / 3000 ft.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'When Established:',
              subItems: [
                '« Ldg check, all green ».',
                'L/G doors do not close.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'When L/G Down:',
              subItems: [
                'Direct law.',
                '\'USE MAN PITCH TRIM\'.',
                'In ALTN law, still autotrim.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'On GS, Set L/G Down:',
              subItems: [
                'Use GRAV EXT to preserve G HYD.',
                'Normal law remains active.',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'Outer Marker:',
              subItems: [
                'PNF: « OM ALT ___ ft »',
                'PF: « Checked »',
                'Announce: « Attention CCM on station x 2 »',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 20.0),

            // --- 4. LANDING & TOUCHDOWN ---
            _buildSectionTitle('3. LANDING & TOUCHDOWN', timelineBlue),
            _buildTextGroup(
              mainText: 'Final Approach:',
              subItems: [
                'Capt = landing: Min. at 1000 ft AGL.',
                'At DA: « Ldg » or « G/A ».',
                'At 100 ft AGL: « BRACE 3x ».',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'At Touchdown (Long RWY ≥ 2000 m):',
              subItems: [
                'Use only REV 1.',
                'F/O callout GS.',
              ],
              bulletColor: timelineBlue,
            ),

            // ملاحظة إضافية في الأسفل كرتزوك دقيق للصورة
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Remark : Normal BRK (since G HYD available, but still anticipate a possible deterioration of the braking capacity (better be safe than sorry).',
                  style: TextStyle(
                    color: subTextColor,
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. GO-AROUND (G/A) & DIVERSION ---
            _buildSectionTitle('G/A & DIVERSION', highlightYellow),
            _buildTextGroup(
              mainText: 'G/A Execution:',
              subItems: [
                'No CONF change.',
                'L/G remains down.',
                'Initially VAPP.',
                'Max speed (see QRH).',
              ],
              bulletColor: highlightYellow,
            ),
            _buildTextGroup(
              mainText: 'Diversion Considerations:',
              subItems: [
                'CONF change & speed: see QRH.',
                'L/G remains down.',
                'Increased fuel consumption.',
              ],
              bulletColor: highlightYellow,
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
                'Normal law remains active !',
                'Cabin : full EMER preparation !',
                'No overweight landing !',
                'NORM brakes only (with A/B) !',
                'Monitored approach !',
                'Slats & flaps operative but slow !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'FULL EMERGENCY !',
                'Announce requests early enough !',
                'Wide vectors, longfinal, G/A !',
                'Towing (RWY blocked after ldg) !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'Airbus FCTM 1.03.29',
                'Abnorm/Emer HYD 3.02.29',
                'SLATS/FLAPS jammed 3.02.10',
                'Ldg CONF/VAPP 3.02.80',
                'FOM 8.3.16.2.3',
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
