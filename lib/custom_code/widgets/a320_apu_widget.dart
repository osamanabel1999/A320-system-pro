// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320ApuWidget extends StatefulWidget {
  const A320ApuWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<A320ApuWidget> createState() => A320ApuWidgetState();
}

class A320ApuWidgetState extends State<A320ApuWidget> {
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

            // --- APU START ---
            _buildSectionHeader('APU START'),
            _buildCard(
              children: [
                _buildKeyValueRow('Min APU oil quantity before start',
                    'LOW OIL LEVEL must not be displayed'),
                _buildDivider(),
                _buildKeyValueRow(
                    'EGT MAX', '-33°C (inhibited during APU start)'),
                _buildDivider(),
                _buildKeyValueRow(
                    'APU OIL QTY (message "LOW OIL LEVEL" pulsing)',
                    'If there is no oil leak, then the remaining oil quantity allows normal APU operation for about 10 h.'),
                _buildDivider(),
                _buildKeyValueRow('APU start cycles', '3 ON/60 mins OFF/3 ON'),
                _buildDivider(),
                _buildKeyValueRow('APU N (AMBER)', '102%'),
                _buildDivider(),
                _buildKeyValueRow('Max N speed (RED)', '107%'),
                _buildDivider(),
                _buildKeyValueRow('Max EGT APU Running', '675 °C'),
                _buildDivider(),
                _buildKeyValueRow('Max EGT APU start ↓ FL350', '1 090 °C'),
                _buildDivider(),
                _buildKeyValueRow('Max EGT APU start ↑ FL350', '1 120 °C'),
              ],
            ),

            // --- APU START/SHUTDOWN DURING REFUELING/DEFUELING ---
            _buildSectionHeader(
                'APU START/SHUTDOWN DURING REFUELING/DEFUELING'),
            _buildCard(
              children: [
                _buildInfoText(
                    'During refuel/defuel procedures, APU starts, or shutdown are permitted with the following restrictions:',
                    isItalic: true),
                const SizedBox(height: 8),
                _buildSubBullet(
                    '- If the APU failed to start or following an automatic APU shutdown, do not start the APU.'),
                _buildSubBullet(
                    '- If a fuel spill occurs, perform a normal APU shutdown.'),
              ],
            ),

            // --- OPERATIONAL LIMITS ---
            _buildSectionHeader('OPERATIONAL LIMITS'),
            _buildCard(
              children: [
                _buildKeyValueRow('APU OPS & NORM restart limit', '41 000 ft'),
                _buildDivider(),
                _buildKeyValueRow('APU Bat Restart Lim ELEC EMER', '25 000 ft'),
                _buildDivider(),
                _buildKeyValueRow(
                    'APU Ground Operation', '-1 000 ft to 14 750 ft'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Bleed Air & Elec Power', '-2 000 ft to 22 500 ft'),
                _buildDivider(),
                _buildKeyValueRow('Elec Power only', '22 500 ft to 41 000 ft'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Max Altitude to Assist Engine start', '20 000 ft'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Max alt for AC & PRESS (1PACK)', '22 500 ft'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Max alt for AC & PRESS (2PACK)', '15 000 ft'),
                _buildDivider(),
                _buildNoteText(
                    'Use of APU bleed air for wing anti-ice is not permitted.'),
              ],
            ),

            // --- OPERATIONAL ENVELOPE ---
            _buildSectionHeader('OPERATIONAL ENVELOPE'),
            _buildCard(
              children: [
                _buildInfoText(
                  'Note: When a value of the environmental envelope of the aircraft is more limited than the operational envelope of the APU, the value of the environmental envelope of the aircraft must not be exceeded. Refer to LIM-AG-OPS Environmental Envelope.',
                  isItalic: true,
                ),
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
            'AUXILIARY POWER UNIT',
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
        Expanded(flex: 3, child: _headerBadge('SERIES', cardBorder)),
        const SizedBox(width: 4),
        Expanded(
            flex: 3, child: _headerBadge('A320 CFM', Colors.blue.shade600)),
        const SizedBox(width: 4),
        Expanded(
            flex: 3, child: _headerBadge('A320 IAE', Colors.blue.shade800)),
        const SizedBox(width: 4),
        Expanded(
            flex: 3, child: _headerBadge('A320N LEAP', Colors.green.shade500)),
        const SizedBox(width: 4),
        Expanded(
            flex: 3, child: _headerBadge('A320N PW', Colors.green.shade700)),
      ],
    );
  }

  Widget _headerBadge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Text(
            key,
            style: TextStyle(
                color: textMuted, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 5,
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: textMain, fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }

  Widget _buildSubBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        text,
        style: TextStyle(color: textMuted, fontSize: 13, height: 1.4),
      ),
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
        height: 1.4,
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
}
