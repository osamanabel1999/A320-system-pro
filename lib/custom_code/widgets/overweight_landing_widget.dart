// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

class OverweightLandingWidget extends StatefulWidget {
  const OverweightLandingWidget({
    Key? key,
    this.width,
    this.height,
    this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? imagePath;

  @override
  _OverweightLandingWidgetState createState() =>
      _OverweightLandingWidgetState();
}

class _OverweightLandingWidgetState extends State<OverweightLandingWidget> {
  // الألوان الأساسية لـ Dark Theme الخاصة بـ Simulator Station
  final Color bgColor = const Color(0xFF151517);
  final Color mainTextColor = const Color(0xFFE5E5E5);
  final Color subTextColor = const Color(0xFFA3A3A3);
  final Color titleColor = const Color(0xFFFFFFFF);

  // ألوان التمييز
  final Color alertRed =
      const Color(0xFFEF4444); // أحمر للتحذيرات والمكابح الساخنة
  final Color timelineBlue = const Color(0xFF3B82F6); // أزرق للمراحل والبيانات
  final Color warningOrange =
      const Color(0xFFF59E0B); // أصفر/برتقالي للملاحظات والجداول

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
                      'Overweight landing',
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
                      color: warningOrange.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: warningOrange, width: 1.0),
                    ),
                    child: Text(
                      '',
                      style: TextStyle(
                        color: warningOrange,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --- 1. ALL ENGINES & 1 ENGINE OUT STRATEGIES ---
            _buildSectionTitle('OVERWEIGHT STRATEGIES', timelineBlue),
            _buildTextGroup(
              mainText: 'OVERWEIGHT LANDING ALL ENGINES :',
              subItems: [
                'Use QRH !',
                'Create drag - fly GD.',
                'G/A performance :',
                ' - Check FCOM.',
                ' - A319/320 : no limit up to MTOW (see table below).',
                ' - A321 : check table in QRH (approach dmb 1st cut).',
                'Approach in CONF 3 & G/A in CONF 1 = never limiting.',
                'All engines G/A is never limiting !',
              ],
              bulletColor: timelineBlue,
            ),
            _buildTextGroup(
              mainText: 'OVERWEIGHT LANDING 1 ENGINE OUT :',
              subItems: [
                'Use QRH !',
                'G/A performance (for info only, sincere local requirements) :',
                ' - Approach climb requirement = all engines case only !',
                ' - Check FCOM to have an idea of 1st cut G/A perfo.',
                ' - A319/320 : no limit up to MTOW (see table below).',
                ' - A321 : check table in QRH (approach dmb 1st cut).',
                'Fly approach CONF 3 & G/A in CONF 1.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 2. ADDITIONAL INFORMATION ---
            _buildSectionTitle('ADDITIONAL INFORMATION', warningOrange),
            _buildTextGroup(
              mainText: 'Systems & Touchdown Details :',
              subItems: [
                'If packs on APU and APU bleed fails :',
                ' - engine bleeds open automatically if not switched OFF.',
                ' - use PACKS OFF or supplied from APU with ENG BLEEDS OFF.',
                'Smooth touchdown, max 360 ft/min (F/O : callout V/S).',
                'Gear inspection required.',
                'Entry in TIR.',
                'Tyre fuse plugs melt at 800°C.',
                'Landing distance : 2000m no margin / 3000m with 67% margin.',
              ],
              bulletColor: warningOrange,
            ),

            const SizedBox(height: 10.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 3. ACTUAL LANDING DISTANCE TABLE ---
            Text(
              'ACTUAL LANDING DISTANCE (FCOIM 2.03.10)',
              style: TextStyle(
                color: titleColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: subTextColor.withOpacity(0.2)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: timelineBlue.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Text('Condition',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                        Expanded(
                            flex: 2,
                            child: Text('A319',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                        Expanded(
                            flex: 2,
                            child: Text('A320',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                        Expanded(
                            flex: 2,
                            child: Text('A321',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                      ],
                    ),
                  ),
                  _buildLandingRow(
                      'Dry - CONF FULL', '990', '1150', '1350', false),
                  _buildLandingRow(
                      'Dry - CONF 3', '1140', '1250', '1500', true),
                  _buildLandingRow(
                      'Wet - CONF FULL', '1280', '1450', '1600', false),
                  _buildLandingRow(
                      'Wet - CONF 3', '1460', '1580', '1800', true),
                ],
              ),
            ),

            const SizedBox(height: 30.0),
            Divider(color: subTextColor.withOpacity(0.2), thickness: 1.0),
            const SizedBox(height: 30.0),

            // --- 4. APPROACH CLIMB TABLE ---
            Text(
              'APPROACH CLIMB (2.1%) - 1 ENG OUT - MTOW (FCOM 3.05.35)',
              style: TextStyle(
                color: titleColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: subTextColor.withOpacity(0.2)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: alertRed.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Text('Item',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                        Expanded(
                            flex: 2,
                            child: Text('A319',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                        Expanded(
                            flex: 2,
                            child: Text('A320',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                        Expanded(
                            flex: 2,
                            child: Text('A321',
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0))),
                      ],
                    ),
                  ),
                  _buildClimbRow('MSN', '1043/1068/1086-1145', '1054 / 1081',
                      '970-1012', false),
                  _buildClimbRow('MTOW', '88.000', '75.500', '83.000', true),
                  _buildClimbRow('MLW', '61.000', '64.500', '75.500', false),
                  _buildClimbRow('G/A 1# (FLAPS 2)', '2000 ft\n48°C',
                      '2000 ft\n46°C', '2000 ft\n30°C', true),
                  _buildClimbRow('G/A 1# (FLAPS 3)', '2000 ft\n44°C / ~2.5k',
                      '2000 ft\n44°C / ~300g', '1500 ft\n26°C / ~5.7k', false),
                ],
              ),
            ),

            const SizedBox(height: 30.0),
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
                'No rush (leave holding when in final CONF) !',
                'Use QRH !',
                'Check G/A & kg performance !',
                'AUTO BRK LO !',
                'Packs OFF is better than on APU !',
                'Capt = landing !',
                'Bird ON (unknown attitudes) !',
              ],
            ),
            _buildTextGroup(
              mainText: 'ATC:',
              subItems: [
                'Fire brigade (hot brakes) !',
              ],
            ),
            _buildTextGroup(
              mainText: 'REF\'S:',
              subItems: [
                'Weight limitations 3.01.20',
                'Overweight landing 3.02.80',
                'G/A-around performance 3.05.35',
                'Landing distance 2.03.10',
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

  // دوال مساعدة لصفوف الجداول
  Widget _buildLandingRow(
      String col1, String col2, String col3, String col4, bool isAlternate) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color:
            isAlternate ? Colors.white.withOpacity(0.03) : Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(col1,
                  style: TextStyle(color: mainTextColor, fontSize: 13.0))),
          Expanded(
              flex: 2,
              child: Text(col2,
                  style: TextStyle(color: mainTextColor, fontSize: 13.0))),
          Expanded(
              flex: 2,
              child: Text(col3,
                  style: TextStyle(color: mainTextColor, fontSize: 13.0))),
          Expanded(
              flex: 2,
              child: Text(col4,
                  style: TextStyle(color: mainTextColor, fontSize: 13.0))),
        ],
      ),
    );
  }

  Widget _buildClimbRow(
      String col1, String col2, String col3, String col4, bool isAlternate) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color:
            isAlternate ? Colors.white.withOpacity(0.03) : Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(col1,
                  style: TextStyle(
                      color: mainTextColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600))),
          Expanded(
              flex: 2,
              child: Text(col2,
                  style: TextStyle(color: mainTextColor, fontSize: 12.0))),
          Expanded(
              flex: 2,
              child: Text(col3,
                  style: TextStyle(color: mainTextColor, fontSize: 12.0))),
          Expanded(
              flex: 2,
              child: Text(col4,
                  style: TextStyle(color: mainTextColor, fontSize: 12.0))),
        ],
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
