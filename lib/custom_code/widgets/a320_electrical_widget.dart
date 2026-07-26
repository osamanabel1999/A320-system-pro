// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320ElectricalWidget extends StatefulWidget {
  const A320ElectricalWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  A320ElectricalWidgetState createState() => A320ElectricalWidgetState();
}

class A320ElectricalWidgetState extends State<A320ElectricalWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924);
  final Color gradientBottom = const Color(0xFF0F172A);
  final Color cardBg = const Color(0xFF1A2634);
  final Color cardBorder = const Color(0xFF2C3E50);
  final Color accentCyan = const Color(0xFF4DD0E1);
  final Color textMain = const Color(0xFFF8FAFC);
  final Color textMuted = const Color(0xFF94A3B8);
  final Color greenColor = const Color(0xFF4ADE80);
  final Color redColor = const Color(0xFFF87171);
  final Color noteColor = const Color(0xFFFCA5A5);

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
            // 1. AC GENERATORS
            // ==========================================
            _buildSectionHeader('AC GENERATORS'),
            _buildCard(
              children: [
                _buildKeyValueRow(
                  'ENGINE – DRIVEN GENERATORS\nAPU GENERATOR AND EXTERNAL POWER',
                  '90 KVA of three phase 115/200 V 400 Hz power.',
                ),
                _buildDivider(),
                _buildKeyValueRow(
                  'EMERGENCY GENERATOR',
                  '5 KVA of three-phase 115 and 200 V 400 Hz power.',
                ),
                _buildDivider(),
                _buildKeyValueRow(
                  'STATIC INVERTER',
                  '1 KVA of single-phase 115 V 400 Hz',
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 2. DC GENERATION
            // ==========================================
            _buildSectionHeader('DC GENERATION'),
            _buildCard(
              children: [
                _buildKeyValueRow(
                  'TRANSFORMER RECTIFIERS (TRS)',
                  '200 A of DC current',
                ),
                _buildDivider(),
                _buildKeyValueRow(
                  'BATTERIES',
                  '23 Ah',
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 3. CIRCUIT BREAKERS (C/BS)
            // ==========================================
            _buildSectionHeader('CIRCUIT BREAKERS (C/BS)'),
            _buildCard(
              children: [
                _buildKeyValueRow(
                  'Monitored',
                  'Green',
                  valueColor: greenColor,
                ),
                _buildNoteText(
                    'out for more than 1 min, the C/B TRIPPED warning is triggered on the ECAM.'),
                _buildDivider(),
                _buildKeyValueRow(
                  'Non-monitored',
                  'Black',
                ),
                _buildDivider(),
                _buildKeyValueRow(
                  'Wing Tip Brake (WTB)',
                  'Red*',
                  valueColor: redColor,
                ),
                _buildNoteText('*to prevent them from being reset'),
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
            'ELECTRICAL',
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

  Widget _buildKeyValueRow(String key, String value, {Color? valueColor}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Text(
            key,
            style: TextStyle(
                color: textMuted,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 5,
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: valueColor ?? textMain,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                height: 1.3),
          ),
        ),
      ],
    );
  }

  Widget _buildNoteText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, bottom: 4.0),
      child: Text(
        text,
        style: TextStyle(
            color: noteColor,
            fontSize: 11,
            fontStyle: FontStyle.italic,
            height: 1.3),
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
