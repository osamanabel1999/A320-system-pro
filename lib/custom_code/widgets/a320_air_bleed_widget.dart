// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320AirBleedWidget extends StatefulWidget {
  const A320AirBleedWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<A320AirBleedWidget> createState() => _A320AirBleedWidgetState();
}

class _A320AirBleedWidgetState extends State<A320AirBleedWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924); // Deep Teal/Navy
  final Color gradientBottom = const Color(0xFF0F172A); // Dark Slate
  final Color cardBg = const Color(0xFF1A2634); // Slightly lighter for cards
  final Color cardBorder = const Color(0xFF2C3E50); // Subtle border
  final Color accentCyan = const Color(0xFF4DD0E1); // Vibrant Cyan for headers
  final Color textMain = const Color(0xFFF8FAFC); // Crisp white
  final Color textMuted = const Color(0xFF94A3B8); // Gray for secondary text
  final Color warningRed =
      const Color(0xFFEF4444); // Bright Red for MUST NOT/Warnings

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
            const SizedBox(height: 32),

            // --- GENERAL ---
            _buildSectionHeader('GENERAL'),
            _buildCard(
              children: [
                _buildRichWarningText(
                  startText: 'With passengers on board, it is ',
                  warningText:
                      'not recommended to exceed 20 min without air conditioning supply.',
                  endText:
                      ' The lack of fresh air supply will significantly reduce the cabin\'s air quality.',
                ),
              ],
            ),

            // --- APU BLEED USE WITH HP AIR START UNIT ---
            _buildSectionHeader('APU BLEED USE WITH HP AIR START UNIT'),
            _buildCard(
              children: [
                _buildRichWarningText(
                  startText: 'The flight crew ',
                  warningText:
                      'must not use bleed air from the APU BLEED and from the HP Air Start Unit at the same time,',
                  endText:
                      ' to prevent any adverse effect on the Bleed Air System.',
                ),
              ],
            ),

            // --- AVIONICS VENTILATION ---
            _buildSectionHeader('AVIONICS VENTILATION'),
            _buildCard(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'During ground operations and depending on the Outside Air Temperature (OAT), the flight crew must limit the time that the aircraft electric power supply is used, in normal avionics ventilation system configuration, as follows:',
                    style: TextStyle(
                        color: textMuted,
                        fontSize: 13,
                        height: 1.4,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                _buildTableRow(['OAT ≤ 49 °C', 'No limitation']),
                _buildTableRow(['49 °C < OAT ≤ 55 °C', '2 h']),
                _buildTableRow(['55 °C < OAT ≤ 60 °C', '1 h']),
                _buildTableRow(['60 °C < OAT ≤ 64 °C', '0.5 h']),
                _buildTableRow(['49 °C < OAT ≤ 55 °C', '2 h'],
                    isLast: true), // Kept exactly as in the image
              ],
            ),

            // --- CABIN PRESSURE ---
            _buildSectionHeader('CABIN PRESSURE'),
            _buildCard(
              children: [
                _buildKeyValueRow('Max POS differential pressure', '9.0 PSI'),
                _buildDivider(),
                _buildKeyValueRow('Max NEG differential pressure', '-1.0 PSI'),
                _buildDivider(),
                _buildKeyValueRow('Safety relief valve setting', '8.6 PSI'),
                _buildDivider(),
                // Red note inserted directly below setting
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: warningRed.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: warningRed.withOpacity(0.3)),
                  ),
                  child: Text(
                    'Max diff. pressure (Δp) and safety valve setting tolerance ± 7 hPa (0.1 PSI).',
                    style: TextStyle(
                        color: warningRed,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                _buildDivider(),
                _buildKeyValueRow('Min CAB alt selection', '-2 000 ft'),
                _buildDivider(),
                _buildKeyValueRow('Max CAB alt selection', '14 000 ft'),
                _buildDivider(),
                _buildKeyValueRow('Max NORM CAB alt', '8 000 ft'),
                _buildDivider(),
                _buildKeyValueRow('CAB alt warning', '9 550 ft (± 350 ft)'),
                _buildDivider(),
                _buildKeyValueRow('Outflow valve closure', '15 000 ft'),
              ],
            ),

            // --- PACKS USE WITH LP AIR CONDITIONING UNIT ---
            _buildSectionHeader('PACKS USE WITH LP AIR CONDITIONING UNIT'),
            _buildCard(
              children: [
                _buildRichWarningText(
                  startText: 'The flight crew ',
                  warningText:
                      'must not use conditioned air from the packs and from the LP Air Conditioning Unit at the same time,',
                  endText:
                      ' to prevent any adverse effect on the Air Conditioning system.',
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
  // --- UI HELPER METHODS (MODERN DESIGN) ---
  // ==========================================

  Widget _buildMainTitle() {
    return Column(
      children: [
        Text(
          'A320 LIMITATIONS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: textMain,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'AIR BLEED / COND / PRESS / VENT',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: accentCyan,
            letterSpacing: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8, top: 24),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }

  Widget _buildTableRow(List<String> data, {bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: data.indexOf(data.first) % 2 == 0
            ? Colors.transparent
            : Colors.white.withOpacity(0.02),
        border: isLast
            ? null
            : Border(bottom: BorderSide(color: cardBorder, width: 1)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Text(
              data[0],
              style: TextStyle(
                  color: textMuted, fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              data[1],
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: textMain, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRichWarningText(
      {required String startText,
      required String warningText,
      required String endText}) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            color: textMuted,
            fontSize: 14,
            height: 1.5,
            fontStyle: FontStyle.italic),
        children: [
          TextSpan(text: startText),
          TextSpan(
            text: warningText,
            style: TextStyle(
                color: warningRed,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          TextSpan(text: endText),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Divider(color: cardBorder, height: 1, thickness: 1),
    );
  }
}
