// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320IceProtectionWidget extends StatefulWidget {
  const A320IceProtectionWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  A320IceProtectionWidgetState createState() => A320IceProtectionWidgetState();
}

class A320IceProtectionWidgetState extends State<A320IceProtectionWidget> {
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
            // 1. DEFINITION OF ICING CONDITIONS
            // ==========================================
            _buildSectionHeader('DEFINITION OF ICING CONDITIONS'),
            _buildCard(
              children: [
                _buildParagraph(
                    '- Icing conditions exist when the OAT (on ground or after takeoff) or the TAT (in flight) is at or below 10 °C and visible moisture in any form is present (such as clouds, fog with visibility of 1 sm (1 600 m) or less, rain, snow, sleet, or ice crystals).'),
                const SizedBox(height: 12),
                _buildParagraph(
                    '- Icing conditions also exist when the OAT on the ground and for takeoff is at or below 10 °C and operating on ramps, taxiways, or runways where surface snow, standing water or slush may be ingested by the engines, or freeze on engines, nacelles, or engine sensor probes.'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 2. DEFINITION OF SEVERE ICE ACCRETION
            // ==========================================
            _buildSectionHeader('DEFINITION OF SEVERE ICE ACCRETION'),
            _buildCard(
              children: [
                _buildParagraph(
                    'Ice accretion is considered severe when the ice accumulation on the airframe reaches approximately 5 mm (0.2 in) thick or more.'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 3. DEFINITION OF THIN HOARFROST
            // ==========================================
            _buildSectionHeader('DEFINITION OF THIN HOARFROST'),
            _buildCard(
              children: [
                _buildParagraph(
                    'Thin hoarfrost is typically a white crystalline deposit which usually develops uniformly on exposed surfaces on cold and cloudless nights. It is so thin that surface features (lines or markings) can be distinguished beneath it.'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 4. RAIN REPELLENT
            // ==========================================
            _buildSectionHeader('RAIN REPELLENT'),
            _buildCard(
              children: [
                _buildParagraph(
                    '- The flight crew should only use the rain repellent in the case of moderate to heavy rain.'),
                const SizedBox(height: 8),
                _buildParagraph(
                    '- This function is inhibited when the aircraft is on the ground and the engines are stopped.'),
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
            'ICE AND RAIN PROTECTION',
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
        fontSize: 12.5,
        height: 1.4,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
