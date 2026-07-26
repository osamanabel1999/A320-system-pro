// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320OxygenWidget extends StatefulWidget {
  const A320OxygenWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  A320OxygenWidgetState createState() => A320OxygenWidgetState();
}

class A320OxygenWidgetState extends State<A320OxygenWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924);
  final Color gradientBottom = const Color(0xFF0F172A);
  final Color cardBg = const Color(0xFF1A2634);
  final Color cardBorder = const Color(0xFF2C3E50);
  final Color accentCyan = const Color(0xFF4DD0E1);
  final Color textMain = const Color(0xFFF8FAFC);
  final Color textMuted = const Color(0xFF94A3B8);
  final Color noteColor = const Color(0xFF93C5FD); // Soft blue for notes

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
            // 1. MINIMUM FLIGHT CREW OXYGEN PRESSURE TABLE
            // ==========================================
            _buildSectionHeader('MINIMUM FLIGHT CREW OXYGEN PRESSURE'),
            _buildCard(
              padding: const EdgeInsets.all(8),
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 12,
                    headingRowHeight: 32,
                    dataRowMinHeight: 32,
                    dataRowMaxHeight: 36,
                    border: TableBorder.all(
                      color: cardBorder,
                      width: 1,
                    ),
                    columns: [
                      DataColumn(
                        label: Text('REF Temperature (1)',
                            style: TextStyle(
                                color: accentCyan,
                                fontSize: 11,
                                fontWeight: FontWeight.bold)),
                      ),
                      for (var temp in [
                        '-10',
                        '0',
                        '10',
                        '20',
                        '30',
                        '40',
                        '50'
                      ])
                        DataColumn(
                          label: Container(
                            alignment: Alignment.center,
                            width: 36,
                            child: Text('$temp°C',
                                style: TextStyle(
                                    color: textMain,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('°F equivalent',
                            style: TextStyle(color: textMuted, fontSize: 11))),
                        for (var f in [
                          '14',
                          '32',
                          '50',
                          '68',
                          '86',
                          '104',
                          '122'
                        ])
                          DataCell(Container(
                            alignment: Alignment.center,
                            child: Text(f,
                                style:
                                    TextStyle(color: textMuted, fontSize: 11)),
                          )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2 Crewmembers',
                            style: TextStyle(
                                color: textMain,
                                fontSize: 11,
                                fontWeight: FontWeight.w600))),
                        for (var val in [
                          '468',
                          '486',
                          '504',
                          '522',
                          '540',
                          '558',
                          '576'
                        ])
                          DataCell(Container(
                            alignment: Alignment.center,
                            child: Text(val,
                                style: TextStyle(
                                    color: accentCyan,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2 Crewmembers + 1 OBS',
                            style: TextStyle(
                                color: textMain,
                                fontSize: 11,
                                fontWeight: FontWeight.w600))),
                        for (var val in [
                          '606',
                          '629',
                          '652',
                          '675',
                          '698',
                          '721',
                          '744'
                        ])
                          DataCell(Container(
                            alignment: Alignment.center,
                            child: Text(val,
                                style: TextStyle(
                                    color: accentCyan,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2 Crewmembers + 2 OBS',
                            style: TextStyle(
                                color: textMain,
                                fontSize: 11,
                                fontWeight: FontWeight.w600))),
                        for (var val in [
                          '759',
                          '788',
                          '817',
                          '846',
                          '875',
                          '904',
                          '933'
                        ])
                          DataCell(Container(
                            alignment: Alignment.center,
                            child: Text(val,
                                style: TextStyle(
                                    color: accentCyan,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold)),
                          )),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'MIN Bottle Pressure (PSI)(2)',
                  style: TextStyle(
                      color: textMuted,
                      fontSize: 10,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ==========================================
            // 2. NOTES & EXPLANATIONS SECTION
            // ==========================================
            _buildSectionHeader('OXYGEN NOTES & CONDITIONS'),
            _buildCard(
              children: [
                _buildNoteTitle('(1) REF Temperature :'),
                const SizedBox(height: 4),
                _buildBulletText(
                    '- On ground : REF Temperature = (OAT + Cockpit TEMP) / 2'),
                const SizedBox(height: 4),
                _buildBulletText(
                    '- In flight : REF Temperature = CAB TEMP (°C) - 10 °C, or\n  REF Temperature = CAB TEMP (°F) - 18 °F'),
                const SizedBox(height: 14),
                _buildNoteTitle('(2) Minimum Bottle Pressure to Cover:'),
                const SizedBox(height: 4),
                _buildBulletText('- Preflight checks'),
                _buildBulletText(
                    '- The use of oxygen, when only one flight crewmember is in the cockpit'),
                _buildBulletText(
                    '- Unusable quantity (to ensure regulator operation with minimum pressure)'),
                _buildBulletText('- Normal system leakage'),
                const SizedBox(height: 6),
                _buildBoldBulletText(
                    '• The most demanding case among the following:'),
                const SizedBox(height: 4),
                _buildSubBulletText(
                    '▪ Protection after loss of cabin pressure, with mask regulator on NORMAL (diluted oxygen):'),
                _buildDeepBulletText(
                    '- During emergency descent for all flight crewmembers and observers for 13 min'),
                _buildDeepBulletText(
                    '- During cruise at FL 100 for two flight crewmembers for 107 min.'),
                const SizedBox(height: 6),
                _buildSubBulletText(
                    '▪ Protection against smoke with 100 % oxygen for all flight crewmembers and observers during 15 min at 8 000 ft cabin altitude.'),
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
            'OXYGEN',
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

  Widget _buildNoteTitle(String text) {
    return Text(
      text,
      style:
          TextStyle(color: textMain, fontSize: 12, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Text(
        text,
        style: TextStyle(color: textMuted, fontSize: 11.5, height: 1.35),
      ),
    );
  }

  Widget _buildBoldBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Text(
        text,
        style: TextStyle(
            color: noteColor,
            fontSize: 11.5,
            fontWeight: FontWeight.bold,
            height: 1.35),
      ),
    );
  }

  Widget _buildSubBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        text,
        style: TextStyle(
            color: textMain,
            fontSize: 11,
            fontWeight: FontWeight.w600,
            height: 1.35),
      ),
    );
  }

  Widget _buildDeepBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0),
      child: Text(
        text,
        style: TextStyle(color: textMuted, fontSize: 11, height: 1.35),
      ),
    );
  }
}
