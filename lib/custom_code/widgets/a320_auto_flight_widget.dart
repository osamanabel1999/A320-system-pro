// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320AutoFlightWidget extends StatefulWidget {
  const A320AutoFlightWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<A320AutoFlightWidget> createState() => _A320AutoFlightWidgetState();
}

class _A320AutoFlightWidgetState extends State<A320AutoFlightWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924); // Deep Teal/Navy
  final Color gradientBottom = const Color(0xFF0F172A); // Dark Slate
  final Color cardBg = const Color(0xFF1A2634); // Slightly lighter for cards
  final Color cardBorder = const Color(0xFF2C3E50); // Subtle border
  final Color accentCyan = const Color(0xFF4DD0E1); // Vibrant Cyan for headers
  final Color textMain = const Color(0xFFF8FAFC); // Crisp white
  final Color textMuted = const Color(0xFF94A3B8); // Gray for secondary text
  final Color noteColor =
      const Color(0xFFFCA5A5); // Soft red for notes/warnings

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [gradientTop, gradientBottom],
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMainTitle(),
            const SizedBox(height: 16),
            _buildModelHeaders(),
            const SizedBox(height: 24),

            // --- AUTOPILOT FUNCTION ---
            _buildSectionHeader('AUTOPILOT FUNCTION'),
            _buildCard(
              children: [
                _buildKeyValueRow('Min height AP ON for T-O',
                    '100 ft AGL & 5s after liftoff'),
                _buildDivider(),
                _buildKeyValueRow('FINAL APP, V/S or FPA mode', '250 ft AGL'),
                _buildDivider(),
                _buildKeyValueRow('In circling approach',
                    '500 ft AGL A/C CAT C\n600 ft AGL A/C CAT D'),
                _buildDivider(),
                _buildKeyValueRow(
                    'ILS CAT1 is displayed on the FMA', '160 ft AGL'),
                _buildDivider(),
                _buildKeyValueRow(
                    'ILS approach when CAT2 or CAT3 (single or dual) is displayed on the FMA',
                    '0 ft AGL if autoland'),
                _buildDivider(),
                _buildKeyValueRow('After a manual go-around', '100 ft AGL'),
                _buildDivider(),
                _buildKeyValueRow('In all other phases', '500 ft AGL'),
                _buildDivider(),
                _buildNoteText(
                    'The AP or FD in OP DES or DES mode can be used in approach. However, its use is only permitted if the FCU selected altitude is set to, or above, the higher of the two: MDA/MDH or 500 ft AGL'),
              ],
            ),

            // --- MAXIMUM WIND CONDITIONS FOR ILS CAT II OR CAT III ---
            _buildSectionHeader(
                'MAXIMUM WIND CONDITIONS FOR ILS CAT II OR CAT III'),
            _buildCard(
              children: [
                _buildMultiColRow('Headwind', ['30 kt (CEO)', '30 kt (NEO)']),
                _buildDivider(),
                _buildMultiColRow('Tailwind', ['10 kt (CEO)', '10 kt (NEO)']),
                _buildDivider(),
                _buildMultiColRow('Crosswind', [
                  '20 kt (CEO)',
                  '20 kt (15 kt for AUTO ROLLOUT w/ OEI) (NEO)'
                ]),
              ],
            ),

            // --- AUTOMATIC LANDING ---
            _buildSectionHeader('AUTOMATIC LANDING'),
            _buildCard(
              children: [
                _buildInfoText(
                    'ILS CAT II and CAT III autoland approved in CONF 3 and CONF FULL.',
                    isItalic: true),
                _buildDivider(),
                _buildKeyValueRow('AUTOLAND is demonstrated:', ''),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSubBullet('- With CAT II and CAT III ILS beam'),
                      _buildDividerSmall(),
                      _buildMultiColRowCustom(
                          'With a glide slope angle between &',
                          ' -2.5 ° and -3.15 °',
                          ' -2.5 ° and -3.25 °'),
                      _buildDividerSmall(),
                      _buildKeyValueRow(
                          '- With an airport elevation at or below',
                          '2 500 ft, 6 500 ft, or 9 200 ft (Refer to your FCOM limitations)'),
                      _buildDividerSmall(),
                      _buildMultiColRowCustom(
                          'With aircraft weight',
                          ' below the maximum landing weight',
                          ' At or above 44 t'),
                      _buildDividerSmall(),
                      _buildMultiColRowCustom(
                          'Automatic landing is not allowed below',
                          ' -1000 ft',
                          ' -2000 ft'),
                    ],
                  ),
                ),
              ],
            ),

            // --- USE OF NAV MODE ---
            _buildSectionHeader('USE OF NAV MODE'),
            _buildCard(
              children: [
                _buildInfoText('Refer to your FCOM limitations',
                    isItalic: true, center: true),
              ],
            ),

            // --- NAVIGATION DATABASE VALIDATION ---
            _buildSectionHeader('NAVIGATION DATABASE VALIDATION'),
            _buildCard(
              children: [
                _buildInfoText('Refer to your FCOM limitations',
                    isItalic: true, center: true),
              ],
            ),

            // --- NON-PRECISION APPROACHES WITH ENGINE-OUT ---
            _buildSectionHeader('NON-PRECISION APPROACHES WITH ENGINE-OUT'),
            _buildCard(
              children: [
                _buildInfoText('Refer to your FCOM limitations',
                    isItalic: true, center: true),
              ],
            ),

            // --- AUTOMATIC APPROACH, LANDING AND ROLLOUT ---
            _buildSectionHeader('AUTOMATIC APPROACH, LANDING AND ROLLOUT'),
            _buildCard(
              children: [
                _buildKeyValueRow('MDH ILS CAT2', '100 ft AGL'),
                _buildNoteText(
                    'At least one autopilot must be engaged in APPR mode, and CAT 2 or CAT 3 SINGLE or CAT 3 DUAL must be displayed on the FMA.\nFor manual landing, AP should be disconnected no later than 80 ft AGL.'),
                _buildDivider(),
                _buildKeyValueRow(
                    'MDH ILS CAT3 SINGLE FAIL PASSIVE', '50 ft AGL'),
                _buildNoteText(
                    'A/THR must be used in selected or managed speed.\nAt least one autopilot must be engaged in APPR mode, and CAT 3 SINGLE or CAT 3 DUAL must be displayed on the FMA.'),
                _buildDivider(),
                _buildKeyValueRow('Alert height ILS CAT3 DUAL FAIL OPERATIONAL',
                    '100 ft AGL'),
                _buildNoteText(
                    'A/THR must be used in selected or managed speed.\nBoth autopilots must be engaged in APPR mode, and CAT 3 DUAL must be displayed on the FMA.'),
                _buildDivider(),
                _buildKeyValueRow('ILS CAT3 DUAL FAIL OPERATIONAL', ''),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Text('CAT III with DH: MDH',
                              style:
                                  TextStyle(color: textMuted, fontSize: 13))),
                      Expanded(
                          flex: 4,
                          child: Text('Refer to your FCOM limitations',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: textMain,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text('CAT III without DH: Min RVR',
                            style: TextStyle(color: textMuted, fontSize: 13))),
                    Expanded(
                        flex: 4,
                        child: Text('75 m',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: textMain,
                                fontSize: 13,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),

            // --- ENGINE OUT ---
            _buildSectionHeader('ENGINE OUT'),
            _buildCard(
              children: [
                _buildMultiColRow(
                    'CAT II & CAT III fail passive autoland are approved in',
                    ['CONF FULL (CEO)', 'CONF 3 and FULL (NEO)']),
                _buildDivider(),
                _buildInfoText(
                    'If engine-out procedures are completed before reaching 1 000 ft in approach.',
                    isItalic: true),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // ==========================================
  // --- UI HELPER METHODS ---
  // ==========================================

  Widget _buildMainTitle() {
    return Column(
      children: [
        Text(
          'AIRBUS A320',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: textMain,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: accentCyan.withOpacity(0.15),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: accentCyan.withOpacity(0.4)),
          ),
          child: Text(
            'AUTO FLIGHT SYSTEM',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: accentCyan,
              fontWeight: FontWeight.w900,
              fontSize: 14,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildModelHeaders() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: cardBorder, borderRadius: BorderRadius.circular(6)),
            child: const Text('SERIES',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(6)),
            child: const Text('A320 CFM / IAE',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: Colors.green.shade800,
                borderRadius: BorderRadius.circular(6)),
            child: const Text('A320N LEAP / PW',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8, top: 20),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: accentCyan,
          fontWeight: FontWeight.bold,
          fontSize: 13,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildCard(
      {required List<Widget> children, EdgeInsetsGeometry? padding}) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: cardBorder, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  Widget _buildKeyValueRow(String key, String value) {
    if (value.isEmpty) {
      return Text(key,
          style: TextStyle(
              color: textMuted, fontSize: 14, fontWeight: FontWeight.w500));
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            key,
            style: TextStyle(
                color: textMuted, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 4,
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: textMain, fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }

  Widget _buildMultiColRow(String key, List<String> values) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          key,
          style: TextStyle(
              color: textMuted, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Row(
          children: values
              .map((val) => Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          right: values.indexOf(val) < values.length - 1
                              ? 8.0
                              : 0.0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: gradientBottom.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: cardBorder),
                      ),
                      child: Text(
                        val,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textMain,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildMultiColRowCustom(String key, String val1, String val2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          key,
          style: TextStyle(
              color: textMuted, fontSize: 13, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  color: gradientBottom.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: cardBorder),
                ),
                child: Text(
                  val1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textMain,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  color: gradientBottom.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: cardBorder),
                ),
                child: Text(
                  val2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textMain,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSubBullet(String text) {
    return Text(
      text,
      style: TextStyle(color: textMuted, fontSize: 13, height: 1.3),
    );
  }

  Widget _buildInfoText(String text,
      {bool center = false, bool isItalic = false}) {
    return Text(
      text,
      textAlign: center ? TextAlign.center : TextAlign.left,
      style: TextStyle(
        color: textMuted,
        fontSize: 13,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      ),
    );
  }

  Widget _buildNoteText(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: gradientBottom.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: cardBorder),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: noteColor,
            fontSize: 12,
            fontStyle: FontStyle.italic,
            height: 1.4),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Divider(color: cardBorder, height: 1, thickness: 1),
    );
  }

  Widget _buildDividerSmall() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Divider(
          color: cardBorder.withOpacity(0.5), height: 1, thickness: 0.5),
    );
  }
}
