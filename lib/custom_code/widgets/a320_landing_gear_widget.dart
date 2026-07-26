// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320LandingGearWidget extends StatefulWidget {
  const A320LandingGearWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  A320LandingGearWidgetState createState() => A320LandingGearWidgetState();
}

class A320LandingGearWidgetState extends State<A320LandingGearWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924);
  final Color gradientBottom = const Color(0xFF0F172A);
  final Color cardBg = const Color(0xFF1A2634);
  final Color cardBorder = const Color(0xFF2C3E50);
  final Color accentCyan = const Color(0xFF4DD0E1);
  final Color textMain = const Color(0xFFF8FAFC);
  final Color textMuted = const Color(0xFF94A3B8);

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
            const SizedBox(height: 24),

            // ==========================================
            // 1. BRAKING SYSTEM
            // ==========================================
            _buildSectionHeader('BRAKING SYSTEM'),
            _buildCard(
              children: [
                _buildParagraph(
                    '-The braking system is not designed to hold the aircraft in a stationary position when a high thrust level is applied on at least one engine.'),
                const SizedBox(height: 10),
                _buildParagraph(
                    '-During ground procedures that require a thrust increase with braking, the flight crew must ensure that the aircraft remains stationary and must be ready to immediately retard the thrust levers to IDLE.'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 2. BRAKE TEMPERATURE
            // ==========================================
            _buildSectionHeader('BRAKE TEMPERATURE'),
            _buildCard(
              children: [
                _buildKeyValueRow('Max BRK temp T-O (fans off)', '300 °C'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 3. NOSEWHEEL STEERING (NWS) Y HYD SYS
            // ==========================================
            _buildSectionHeader('NOSEWHEEL STEERING (NWS) Y HYD SYS'),
            _buildCard(
              children: [
                Text(
                  'ORDERS FROM RUDDER PEDALS',
                  style: TextStyle(
                      color: accentCyan,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: gradientBottom.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: cardBorder),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Text('GROUND SPEED',
                                  style: TextStyle(
                                      color: textMuted,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold))),
                          Expanded(
                              flex: 4,
                              child: Text('NWS ANGLE',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textMuted,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      const Divider(color: Color(0xFF2C3E50), height: 12),
                      Row(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Text('130 kt',
                                  style: TextStyle(
                                      color: textMain, fontSize: 11))),
                          Expanded(
                              flex: 4,
                              child: Text('±6 °',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: accentCyan,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Text('80 kt',
                                  style: TextStyle(
                                      color: textMain, fontSize: 11))),
                          Expanded(
                              flex: 4,
                              child: Text('±75 °',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: accentCyan,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                _buildKeyValueRow('Maximum NWS angle', '±85 °'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Steering handwheels steer up to', '75 ° either direction'),
                _buildDivider(),
                _buildKeyValueRow('Towing', '95 ° either direction'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Connection between NWS & the rudder pedals is removed',
                    '130 kt (wheel speed)'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 4. TAXI WITH DEFLATED OR DAMAGED TIRES
            // ==========================================
            _buildSectionHeader('TAXI WITH DEFLATED OR DAMAGED TIRES'),
            _buildCard(
              children: [
                Text(
                  'If maximum one tire per gear is deflated (consider three gears)',
                  style: TextStyle(
                      color: accentCyan,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 8),
                _buildKeyValueRow('Maximum taxi speed during turn', '7 kt'),
                const SizedBox(height: 12),
                const Divider(
                    color: Color(0xFF2C3E50), height: 1, thickness: 1),
                const SizedBox(height: 12),
                Text(
                  'If two tires are deflated on the same main gear (maximum one main gear)',
                  style: TextStyle(
                      color: accentCyan,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 8),
                _buildKeyValueRow('Maximum taxi speed', '3 kt'),
                const SizedBox(height: 12),
                const Divider(
                    color: Color(0xFF2C3E50), height: 1, thickness: 1),
                const SizedBox(height: 12),
                Text(
                  'For the nosewheel steering (NWS) angle',
                  style: TextStyle(
                      color: textMuted,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                _buildKeyValueRow('Maximum NWS angle', '30 °'),
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
            'LANDING GEAR',
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

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8, top: 12),
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

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: TextStyle(
        color: textMain,
        fontSize: 12,
        height: 1.4,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildKeyValueRow(String key, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Text(
            key,
            style: TextStyle(
                color: textMuted,
                fontSize: 11.5,
                fontWeight: FontWeight.w500,
                height: 1.3),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 4,
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: textMain,
                fontSize: 11.5,
                fontWeight: FontWeight.w700,
                height: 1.3),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Divider(color: cardBorder, height: 1, thickness: 1),
    );
  }
}
