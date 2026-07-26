// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320FuelWidget extends StatefulWidget {
  const A320FuelWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  A320FuelWidgetState createState() => A320FuelWidgetState();
}

class A320FuelWidgetState extends State<A320FuelWidget> {
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
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMainTitle(),
            const SizedBox(height: 24),

            // ==========================================
            // 1. CERTIFIED FUEL
            // ==========================================
            _buildSectionHeader('CERTIFIED FUEL'),
            _buildCard(
              children: [
                _buildParagraph(
                    'The fuel system is certified with: JET A, JET A1, JET B, JP4, JP5, JP8, N° 3 JET, RT, and TS-1'),
                const SizedBox(height: 8),
                _buildParagraph(
                    'In accordance with engine manufacturers and fuel specifications.'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 2. FUEL TEMPERATURE
            // ==========================================
            _buildSectionHeader('FUEL TEMPERATURE'),
            _buildCard(
              padding: const EdgeInsets.all(8),
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 16,
                    headingRowHeight: 32,
                    dataRowMinHeight: 30,
                    dataRowMaxHeight: 34,
                    border: TableBorder.all(color: cardBorder, width: 1),
                    columns: [
                      DataColumn(
                          label: Text('FUEL TYPE',
                              style: TextStyle(
                                  color: accentCyan,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('MIN',
                              style: TextStyle(
                                  color: accentCyan,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('MAX',
                              style: TextStyle(
                                  color: accentCyan,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold))),
                    ],
                    rows: [
                      _buildTempRow('JET A1 / JP8 / N° 3 JET', '-43 °C', '-'),
                      _buildTempRow('JET A', '-36 °C', '-'),
                      _buildTempRow('JP5', '-42 °C', '54 °C / 55 °C'),
                      _buildTempRow('RT', '-45 °C', '-'),
                      _buildTempRow('TS-1', '-45 °C', '-'),
                      _buildTempRow('JET B', '-46 °C', '49 °C'),
                      _buildTempRow('JP4', '-54 °C', '49 °C'),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                _buildParagraph(
                    'For JET A only, if TAT reaches -34 °C, monitor the fuel temperature on the FUEL SD page, to ensure that it remains above -36 °C.'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 3. FUEL TEMP LIMITS WHEN JP4 & JET B USED
            // ==========================================
            _buildSectionHeader(
                'FUEL TEMPERATURE LIMITS WHEN JP4 AND JET B FUELS ARE USED'),
            _buildCard(
              children: [
                _buildParagraph('Refer to your FCOM limitations'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 4. MAXIMUM ALLOWED FUEL IMBALANCE
            // ==========================================
            _buildSectionHeader('MAXIMUM ALLOWED FUEL IMBALANCE'),
            _buildCard(
              children: [
                Text(
                  'TAKEOFF',
                  style: TextStyle(
                      color: accentCyan,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                _buildImbalanceSubTable([
                  ['INNER TANKS (OUTER TANKS BALANCED)', 'Full', '500 kg'],
                  [
                    'INNER TANKS (OUTER TANKS BALANCED)',
                    '3 000 kg',
                    '1 050 kg'
                  ],
                  [
                    'INNER TANKS (OUTER TANKS BALANCED)',
                    '1 450 kg',
                    '1 450 kg'
                  ],
                  ['OUTER TANKS (INNER TANKS BALANCED)', '-', '370 kg'],
                ]),
                const SizedBox(height: 8),
                _buildParagraph(
                    'The variation is linear between these values, and there is no limitation below 2 250 kg'),
                const SizedBox(height: 16),
                Text(
                  'IN FLIGHT AND AT LANDING',
                  style: TextStyle(
                      color: accentCyan,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                _buildImbalanceSubTable([
                  ['INNER TANKS (OUTER TANKS BALANCED)', 'Full', '1 500 kg'],
                  [
                    'INNER TANKS (OUTER TANKS BALANCED)',
                    '4 300 kg',
                    '1 600 kg'
                  ],
                  [
                    'INNER TANKS (OUTER TANKS BALANCED)',
                    '2 250 kg',
                    '2 250 kg'
                  ],
                  ['OUTER TANKS', '-', '690 kg'],
                ]),
                const SizedBox(height: 8),
                _buildParagraph(
                    'Refer to your FCOM limitations for more information'),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 5. MINIMUM FUEL QUANTITY FOR TAKEOFF
            // ==========================================
            _buildSectionHeader('MINIMUM FUEL QUANTITY FOR TAKEOFF'),
            _buildCard(
              children: [
                _buildKeyValueRow(
                    'Minimum fuel quantity for takeoff', '1 500 kg'),
                const SizedBox(height: 10),
                _buildParagraph(
                    'The ECAM alerts that are related to fuel low level in the wing tanks (FUEL WING TK LO LVL, etc.) must not appear for takeoff.'),
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
            'FUEL',
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
          fontSize: 12,
          letterSpacing: 1.1,
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
        fontSize: 11.5,
        height: 1.35,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  DataRow _buildTempRow(String type, String min, String max) {
    return DataRow(cells: [
      DataCell(Text(type,
          style: TextStyle(
              color: textMain, fontSize: 11, fontWeight: FontWeight.w600))),
      DataCell(Text(min,
          style: TextStyle(
              color: accentCyan, fontSize: 11, fontWeight: FontWeight.bold))),
      DataCell(Text(max, style: TextStyle(color: textMuted, fontSize: 11))),
    ]);
  }

  Widget _buildImbalanceSubTable(List<List<String>> rows) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: cardBorder),
        borderRadius: BorderRadius.circular(6),
        color: gradientBottom.withOpacity(0.4),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              color: cardBorder.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Text('Tank / Condition',
                        style: TextStyle(
                            color: textMuted,
                            fontSize: 10,
                            fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 3,
                    child: Text('Heavier Tank',
                        style: TextStyle(
                            color: textMuted,
                            fontSize: 10,
                            fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 2,
                    child: Text('Max Asymmetry',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: textMuted,
                            fontSize: 10,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          for (var r in rows) ...[
            const Divider(height: 1, color: Color(0xFF2C3E50)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Text(r[0],
                          style: TextStyle(color: textMain, fontSize: 10.5))),
                  Expanded(
                      flex: 3,
                      child: Text(r[1],
                          style: TextStyle(color: textMuted, fontSize: 10.5))),
                  Expanded(
                      flex: 2,
                      child: Text(r[2],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: accentCyan,
                              fontSize: 10.5,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
          ]
        ],
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
                color: textMuted, fontSize: 11.5, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 4,
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: accentCyan, fontSize: 11.5, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
