// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class AdrIrFaultWidget extends StatefulWidget {
  const AdrIrFaultWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _AdrIrFaultWidgetState createState() => _AdrIrFaultWidgetState();
}

class _AdrIrFaultWidgetState extends State<AdrIrFaultWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed = const Color(0xFFEF4444); // أحمر للتحذيرات الخطيرة
  final Color timelineBlue = const Color(0xFF3B82F6); // أزرق للأقسام الطبيعية
  final Color warningOrange =
      const Color(0xFFF59E0B); // أصفر/برتقالي للحالات المشتركة والملاحظات

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
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ADR / IR FAULT',
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // تحذير رئيسي في الأعلى
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: warningOrange.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: warningOrange, width: 1.5),
                    ),
                    child: Text(
                      'If ADR & IR fault simultaneously, solve ADR problem first.',
                      style: TextStyle(
                        color: warningOrange,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10.0),

            // --- 1. NAV SINGLE FAULTS ---
            _buildSectionTitle('NAV SINGLE FAULTS (ADR & IR)', timelineBlue),
            _buildTextGroup(
              mainText: 'NAV Single ADR Fault:',
              subItems: [
                'Follow ECAM.',
                'ADR 3 can be used as backup of ADR 1 or 2.',
                'GPWS OFF if ADR 1 affected (INOP SYS: GPWS).',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'NAV Single IR Fault:',
              subItems: [
                'Follow ECAM.',
                'IR 3 can be used as backup of IR 1 or 2.',
                'Consider ATT mode (QRH) !',
                'Do not switch IR OFF if not required by ECAM, as this will switch OFF corresponding ADR as well !',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. NAV DUAL FAULTS ---
            _buildSectionTitle('NAV DUAL FAULTS (ADR & IR)', warningOrange),
            _buildTextGroup(
              mainText: 'NAV Dual ADR Fault:',
              subItems: [
                'Follow ECAM.',
                'ALTN law (direct law when L/G DN).',
                'Determine PF.',
                'If ADR 3 operative : switch to PF.',
                'If ADR 1+3 fault : L/G GRAV EXT, no retraction !',
                'INOP SYS: F/CTL PROT (ALTN & DIRECT LAW when L/G DN), AP 1+2, A/THR, L/G GRAV EXT*, ATC ALT*.',
              ],
              bulletColor: warningOrange,
            ),
            _buildTextGroup(
              mainText: 'NAV Dual IR Fault:',
              subItems: [
                'Follow ECAM.',
                'ALTN law (direct law when L/G DN).',
                'Determine PF.',
                'If IR 3 operative : switch to PF.',
                'Check NAV capability (1 IR + GPS).',
                'Consider Diverting !',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. NAV TRIPLE ADR FAULT ---
            _buildSectionTitle('NAV TRIPLE ADR FAULT', alertRed),
            _buildTextGroup(
              mainText: 'Initial Verification & Setup:',
              subItems: [
                'ECAM shows dual ADR fault !',
                'If confirmed (look overhead), disregard ECAM, use QRH \'ADR 1+2+3 FAULT\'.',
                'Capt. = PF.',
                'ATT on PFD and ALT & SPEED on STBY.',
                'Use TRK / FPA.',
                'Set target bugs on STBY instruments.',
              ],
              bulletColor: alertRed,
            ),
            _buildTextGroup(
              mainText: 'Cabin Pressurization & Management:',
              subItems: [
                'Use manual CAB PRESS (not mentioned in QRH) !',
                'Target cabin altitude on STS page.',
                'Manual CAB PRESS = full time job !',
                'During Capt\'s management, FO PF on STBY instruments:',
                ' - Set bugs and give clear orders to F/O.',
                ' - Ask airspeed & altitude buffer to ATC.',
                ' - Level flight only (long legs in holding).',
                ' - Monitor closely.',
                'INOP SYS: CAB PRESS 1+2 (Use MANUAL), L/G GRAV EXT*, ATC ALT*.',
              ],
              bulletColor: alertRed,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. REMARKS & SPECIAL MODES ---
            _buildSectionTitle('REMARKS & PROCEDURES', timelineBlue),
            _buildTextGroup(
              mainText: 'Operational Notes:',
              subItems: [
                'Switch ADR OFF with pushbutton.',
                'Switch IR OFF with rotary selector (ADR will be OFF as well).',
                'IR in ATT mode:',
                ' - Use QRH.',
                ' - Enter magnetic heading (STBY compass).',
                ' - Operative IR = TRUE HDG !',
                ' - Consider reset of flight computers to recover normal law.',
                '* L/G GRAV EXT if ADR 1+3 fault.',
                '* ATC ALT inp if ADR 1+2 fault.',
              ],
              bulletColor: timelineBlue,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 5. QUICK REFERENCES ---
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
                'Triple ADR confirmed : disregard ECAM & use QRH !',
                'Always crosscheck with STBY !',
                'All actions confirmed by both pilots !',
                'Read FCOM 3 !',
                'Consider pilot incapacitation !',
                'IR fault : consider ATT mode !',
                'If IR switched OFF = ADR also !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Triple ADR : ask buffer airspace.',
                'Report instrument & navigation capability.',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Limitations 3.01.34',
                'Abnorm/Emer 3.02.34',
                'ADIRS alignment 3.04.34',
              ],
            ),

            const SizedBox(height: 40.0),

            // --- 6. Image Viewer (Full-Screen Zoomable) ---
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
