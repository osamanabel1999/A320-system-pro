// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class EmerElecProcedure extends StatefulWidget {
  const EmerElecProcedure({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _EmerElecProcedureState createState() => _EmerElecProcedureState();
}

class _EmerElecProcedureState extends State<EmerElecProcedure> {
  // الألوان الاحترافية الأساسية (Dark Theme)
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان إضافية للتمييز (مريحة للعين في الدارك مود)
  final Color redHighlight = const Color(0xFFEF4444); // للتحذيرات القوية
  final Color orangeHighlight =
      const Color(0xFFF97316); // للأنظمة المتعطلة INOP SYS

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
                'EMER ELEC',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            // --- 1. ELEC EMER CONFIG ---
            Text(
              'ELEC EMER CONFIG',
              style: TextStyle(
                color: redHighlight,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'APU Guidelines:',
              subItems: [
                'Never start APU if not required by ECAM, since probability of APU GEN coupling is low and battery power is consumed!',
              ],
            ),

            _buildTextGroup(
              mainText: 'RAT Capability:',
              subItems: [
                'A320: till 140 kts with L/G UP or 180 kts with L/G DN.',
                'A319/321: till 125 kts (140 kts guaranteed), except during flare.',
              ],
            ),

            _buildTextGroup(
              mainText: 'General Operations:',
              subItems: [
                'Single ECAM DU operation.',
                'Capt = PF, but temporary transfer to F/O (on STBY instruments) can be considered, but STBY instrument are not lighted!',
              ],
            ),

            _buildTextGroup(
              mainText: 'As long as RAT is operating:',
              subItems: [
                'No rush, but check EMER GEN = supplying network!',
                'ND1 operative when EMER GEN = working else \'ALT ON BAT ONLY\' (A320).',
                'No BSCU, so N.W. STEER, NORM & ALTN brakes inop (ACCU only).',
                'No REV: don\'t select REV since idle will increase!',
              ],
            ),

            _buildTextGroup(
              mainText: 'L/G DN when CONF 3:',
              subItems: [
                'Trimmed state before going to DIRECT law.',
                'ECAM warning \'L/G not down\' when CONF 3 since RA 1+2 inoperative.',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. A320 SPECIFICS ---
            Text(
              'A320 SPECIFICS',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'Approach & Systems Loss:',
              subItems: [
                'Prepare approach on RMP 1.',
                'Loss of DME 1, FMGC 1, MCDU 1 and ND 1 (so also ADFs) when L/G DN since RAT stalls.',
              ],
            ),
            _buildTextGroup(
              mainText: 'Loss of ADIRU 2 & 3 after 5 mins without generators:',
              subItems: [
                'No PERF page.',
                'Calculate VAPP & use selected speed.',
                'Switch OFF IR 2 & 3 if IR 1 valid to save battery life.',
              ],
            ),
            _buildTextGroup(
              mainText: 'Landing Gear:',
              subItems: [
                'L/G DN at 1000 ft AGL on approach.',
                'When L/G UP (after G/A): RAT works again.',
                'EMER GEN can be manually reconnected: ECAM warning \'ELEC ESS BUSES ON BAT\' will ask you \'EMER GEN MAN ON\'!',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 20.0),

            // --- 3. A319/321 SPECIFICS ---
            Text(
              'A319/321 SPECIFICS',
              style: TextStyle(
                color: titleColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            _buildTextGroup(
              mainText: 'APU & RAT:',
              subItems: [
                'APU start requested by ECAM once EMER GEN on line.',
                'RAT remains active when L/G DN & above 140 kts.',
              ],
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. MAJOR INOP SYS ---
            Text(
              'MAJOR INOP SYS (ALL AIRCRAFT)',
              style: TextStyle(
                color: orangeHighlight,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'EMER GEN RUNNING',
              style: TextStyle(color: subTextColor, fontSize: 14.0),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'Lost Systems:',
              subItems: [
                'AP 1+2, A/THR, REV 1+2.',
                'ADR 2+3, IR 2+3, RA 1+2.',
                'ALL F/O INSTRUMENTS & MCDU 2.',
                'Some SPOILERS, A/CALL OUT.',
                'FUEL PUMPS, ANTI SKID, N.W. STEER.',
                'BRK ACCU ONLY (max 1000 psi).',
                'FUEL GRAV FEED ONLY.',
                'ALTN LAW & DIRECT LAW when L/G DN.',
              ],
              customColor: orangeHighlight,
            ),

            const SizedBox(height: 10.0),

            Text(
              'INOP SYS A320 WHEN L/G DN',
              style: TextStyle(
                color: orangeHighlight,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '(RAT stalls and EMER GEN OFF !)',
              style: TextStyle(color: subTextColor, fontSize: 14.0),
            ),
            const SizedBox(height: 20.0),

            _buildTextGroup(
              mainText: 'Additional Lost Systems:',
              subItems: [
                'FMGC 1, MCDU 1.',
                'RAD NAV, Capt ND, DME.',
                'ATC.',
              ],
              customColor: orangeHighlight,
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
              mainText: 'KEYS:',
              subItems: [
                'Capt = PF !',
                'Land ASAP !',
                'Never start APU if not on ECAM !',
                'G/A : reconnect EMER GEN !',
                'Use BIRD !',
                'A320 : prepare APPR on RMP 1.',
                'L/G DN when CONF 3 (in trim).',
                'Do not use REV (high idle) !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Radar vectors !',
                'Long runway !',
                'RWY blocked & towing after landing !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REFS:',
              subItems: [
                'Abnorm/Emer 3.02.24',
                'Remaining equipment QRH 1.01',
                'Flight on BAT only QRH 2.03',
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

  // شكل النقط (Bullets) مع إمكانية تغيير اللون لأقسام معينة
  Widget _buildTextGroup({
    required String mainText,
    required List<String> subItems,
    Color? customColor, // لتمييز أقسام زي الـ INOP SYS
  }) {
    final effectiveColor = customColor ?? mainTextColor;

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
                  color: effectiveColor,
                  fontSize: 18.0,
                  height: 1.3,
                ),
              ),
              Expanded(
                child: Text(
                  mainText,
                  style: TextStyle(
                    color: effectiveColor,
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
                        color: customColor != null
                            ? effectiveColor.withOpacity(0.8)
                            : subTextColor,
                        fontSize: 16.0,
                        height: 1.4,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item,
                        style: TextStyle(
                          color: customColor != null
                              ? effectiveColor.withOpacity(0.8)
                              : subTextColor,
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
