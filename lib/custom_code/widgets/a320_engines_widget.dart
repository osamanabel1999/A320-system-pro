// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320EnginesWidget extends StatefulWidget {
  const A320EnginesWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  A320EnginesWidgetState createState() => A320EnginesWidgetState();
}

class A320EnginesWidgetState extends State<A320EnginesWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924);
  final Color gradientBottom = const Color(0xFF0F172A);
  final Color cardBg = const Color(0xFF1A2634);
  final Color cardBorder = const Color(0xFF2C3E50);
  final Color accentCyan = const Color(0xFF4DD0E1);
  final Color textMain = const Color(0xFFF8FAFC);
  final Color textMuted = const Color(0xFF94A3B8);
  final Color noteColor = const Color(0xFFFCA5A5); // Soft red for notes
  final Color warningColor =
      const Color(0xFFEF4444); // Stronger red for strict prohibitions

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
            const SizedBox(height: 16),
            _buildModelHeaders(),
            const SizedBox(height: 24),

            // ==========================================
            // 1. GENERAL ENGINE INFO
            // ==========================================
            _buildSectionHeader('GENERAL INFO'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildDataRow('MODEL', [
                  'CFM 56-5B4(214)\nCFM 56-5B6(216)',
                  'IAE V2500-A1(231)\nIAE V2527-A5(232)\nIAE V2527E-A5(233)',
                  'LEAP 1A26 (251N)\nLEAP 1A24 (252N)\nLEAP 1A29 (253N)',
                  'PW1127G-JM(271N)\nPW1124G1-JM(272N)\nPW1129G-JM(273N)'
                ]),
                _buildDivider(),
                _buildDataRow('MAKER', [
                  'CFM International',
                  'International Aero Engines',
                  'CFM International\nLeading Edge\nAviation Propulsion',
                  'Pratt & Whitney'
                ]),
                _buildDivider(),
                _buildDataRow('CONFIGURATION', [
                  'Dual spool\nHigh bypass\nTurbofan',
                  'Dual rotor, axial flow, High bypass Turbofan',
                  'Twin-spool, Ultrahigh Bypass Engine (UBE)',
                  'Twin-spool, Ultrahigh Bypass Engine (UBE)'
                ]),
                _buildDivider(),
                _buildDataRow(
                    'BYPASS RATIO',
                    [
                      '214- 5.7:1\n216- 5.9:1',
                      '231- 5.4:1\n232/233- 4.8:1',
                      '11:1',
                      '12.5:1'
                    ],
                    valueColor: accentCyan),
                _buildDivider(),
                _buildDataRow(
                    'STATIC THRUST RATING (MSL) per ENG\n- T-O (5mn)¹ (flat rated 30°C)',
                    [
                      '216- 23,500 lbs.\n214- 27,000 lbs.',
                      '24,800 lbs.',
                      '252N- 24,010 lbs.\n251N- 27,120 lbs.\n253N- 29,290 lbs.',
                      '271N- 27,075 lbs.\n272N- 24,240 lbs.\n273N- 29,245 lbs.'
                    ]),
                _buildDivider(),
                _buildDataRow('- maximum continuous (Flat rated 25°C)', [
                  '5B6 20,250 lbs.\n5B4 24,370 lbs.',
                  '22,240 lbs.',
                  '252N- 24,000 lbs.\n251N- 26,680 lbs.\n253N- 26,680 lbs.',
                  '271N- 26,345 lbs.\n272N- 24,035 lbs.\n273N- 26,345 lbs.'
                ]),
                _buildDivider(),
                _buildNoteText(
                    '¹ 10 minutes at take-off thrust allowed only in case of engine failure (at take-off or during go-around) in accordance with EASA TCDS.'),
                _buildInfoText(
                    'Low bypass- less than 2, Medium bypass- 2 to 4, High bypass-5 to 8, Ultrahigh Bypass Engines(UBE)-9 to 15',
                    center: true),
              ],
            ),

            // ==========================================
            // 2. THRUST SETTING / EGT LIMITS
            // ==========================================
            _buildSectionHeader('THRUST SETTING / EGT LIMITS'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildEgtHeaderRow(),
                _buildDivider(),
                _buildEgtDataRow('TOGA*\nAll Eng Op', '5 min/\nFR 30°C',
                    ['950 °C', '635 °C', '1 060 °C', '1 083 °C']),
                _buildDivider(),
                _buildEgtDataRow('TOGA*\nOne Eng Inop', '10 min/\nFR 25°C',
                    ['950 °C', '635 °C', '1 060 °C', '1 083 °C']),
                _buildDivider(),
                _buildEgtDataRow('Max Continuous\nThrust (MCT)', 'Not\nLimited',
                    ['915 °C', '610 °C', '1025 °C', '1 043 °C']),
                _buildDivider(),
                _buildEgtDataRow('Starting\nOn Ground', '-',
                    ['725 °C', '635 °C', '750 °C', '1 083 °C']),
                _buildDivider(),
                _buildEgtDataRow('Starting\nIn Flight', '-',
                    ['725 °C', '635 °C', '875 °C', '1 083 °C']),
                _buildDivider(),
                _buildInfoText('* Includes TOGA, FLEX thrust modes.',
                    isItalic: true),
              ],
            ),

            // ==========================================
            // 3. SHAFT SPEEDS
            // ==========================================
            _buildSectionHeader('SHAFT SPEEDS'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildDataRow('Maximum N1 in normal operation',
                    ['104 %', '100 %', '101 %', '100 %']),
                _buildDivider(),
                _buildDataRowCustom(
                    'Maximum N1 permitted', '-', '-', '105 %', '105 %'),
                _buildNoteText(
                    'Note: The N1 limit depends on the ambient conditions and on the configuration of the engine air bleed. These parameters may limit N1 to a value that is less than the above-mentioned N1value'),
                _buildDivider(),
                _buildDataRow('Maximum N2 in normal operation',
                    ['105 %', '100 %', '116.5 %', '100 %']),
                _buildDivider(),
                _buildDataRowCustom(
                    'Maximum N2 permitted', '-', '-', '-', '105 %'),
              ],
            ),

            // ==========================================
            // 4. OIL
            // ==========================================
            _buildSectionHeader('OIL'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildSubHeader('OIL TEMPERATURE:'),
                _buildDataRow('Max continuous temp',
                    ['140 °C', '155 °C', '140 °C', '151 °C']),
                _buildDivider(),
                _buildDataRow('Max transient temp 15 min',
                    ['155 °C', '165 °C', '155 °C', '151 °C']),
                _buildDivider(),
                _buildDataRow('Min starting temp',
                    ['-40 °C', '-40 °C', '-40 / -29 °C', '-40 °C']),
                _buildDivider(),
                _buildDataRow('Min temp before takeoff',
                    ['-10 °C', '50 °C', '19 °C', '52 °C']),
                _buildDivider(),
                _buildDataRow('Min temp before IDLE is exceeded',
                    ['-', '-10 °C', '-', '-']),
                const SizedBox(height: 16),
                _buildSubHeader('OIL QUANTITY:'),
                _buildDataRow('Minimum oil quantity', [
                  '9.5 qt + estimated cons.\nAvg cons. = 0.5 qt/hr',
                  '11 qt + estimated cons.\nAvg cons. = 0.3 qt/hr',
                  '10.6 qt + estimated cons.\nAvg cons. = 0.45 qt/hr',
                  '14 qt, OAT ≥ -30 °C\n16.5 qt, OAT < -30 °C'
                ]),
                const SizedBox(height: 16),
                _buildSubHeader('OIL PRESSURE:'),
                _buildDataRow(
                    'Cold start bypass valve open', ['305 PSI', '-', '-', '-']),
                _buildDivider(),
                _buildDataRow(
                    'Max NORM oil pressure', ['90 PSI', '-', '-', '-']),
                _buildDivider(),
                _buildDataRow(
                    'Min NORM ground oil pressure', ['35 PSI', '-', '-', '-']),
                _buildDivider(),
                _buildDataRow('Min oil pressure',
                    ['13 PSI', '60 PSI', '17.4 PSI', '65 PSI']),
                _buildDivider(),
                _buildDataRow('Max oil pressure', [
                  '-',
                  '-',
                  '130.5 PSI ABV 50°C\n145 PSI BLW 50°C',
                  '270 PSI'
                ]),
                _buildDivider(),
                _buildDataRow('NORM operating oil press range',
                    ['35 – 90 PSI', '-', '-', '-']),
                _buildDivider(),
                _buildDataRow('Maintenance action required',
                    ['13 – 35 PSI', '-', '-', '-']),
              ],
            ),

            // ==========================================
            // 5. STARTER
            // ==========================================
            _buildSectionHeader('STARTER'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildDataRow('STANDARD AUTO START', [
                  '3 starts 1 cycle',
                  '1 start 1 cycle',
                  '3 starts 1 cycle',
                  '2 starts 1 cycle'
                ]),
                _buildDivider(),
                _buildDataRow('Pause between successive cycles',
                    ['20 s', '15 s', '60 s', '35 s']),
                _buildDivider(),
                _buildDataRow('Starter cool down', [
                  '15 min cooling required, subsequent to 4 failed cycles',
                  '30 min cooling required, subsequent to 3 failed cycles or 5 min cont. crank',
                  '15 min cooling required, subsequent to 3 failed cycles',
                  '15 min after 3 successive cycles or 15 min continuous/cumulated crank'
                ]),
                _buildDivider(),
                _buildDataRow('Start Cycle', [
                  '2min-20s-2min-20s-2min-20s-2min=15min',
                  '2min-15s-2min-15s-1min=30 min',
                  '-',
                  '-'
                ]),
                _buildDivider(),
                _buildDataRow('Starter must not be run when N2 is above',
                    ['20 %', '10 % on-ground\n18 % in flight', '63 %', '20 %']),
              ],
            ),

            // ==========================================
            // 6. CROSSWIND & ENGINE IDLE
            // ==========================================
            _buildSectionHeader('CROSSWIND OPERATION ON GROUND'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildDataRow(
                    'ENG START UP TO', ['-', '35 KT', '45 kt', '35 kt']),
                _buildDivider(),
                _buildDataRow(
                    'ENG LIMIT AT TAKE-OFF', ['-', '-', '35 kt', '-']),
                _buildDivider(),
                _buildInfoText('The use of GA SOFT mode is prohibited with OEI',
                    isItalic: true, center: true),
              ],
            ),

            _buildSectionHeader('ENGINE IDLE PARAMETERS AT ISA & SEA LEVEL'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildDataRow('EPR', ['-', '1.01', '-', '-']),
                _buildDivider(),
                _buildDataRow('N1', ['19.5 %', '21.4 %', '19 %', '19 %']),
                _buildDivider(),
                _buildDataRow('EGT', ['390 °C', '414 °C', '520 °C', '550 °C']),
                _buildDivider(),
                _buildDataRow('N2', ['58.5 %', '57.8 %', '68 %', '59 %']),
                _buildDivider(),
                _buildDataRow(
                    'FF', ['275 kg/h', '350 kg/h', '290 kg/h', '270 kg/h']),
              ],
            ),

            // ==========================================
            // 7. REVERSE THRUST
            // ==========================================
            _buildSectionHeader('REVERSE THRUST'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildMergedRow('Reverse thrust in flight', 'PROHIBITED'),
                _buildDivider(),
                _buildMergedRow('Backing with reverse thrust', 'not permitted'),
                _buildDivider(),
                _buildMergedRow(
                    'Maximum reverse', 'should not be used below 70 kt.'),
                _buildDivider(),
                _buildMergedRow(
                    'Idle reverse', 'permitted down to aircraft stop.'),
              ],
            ),

            // ==========================================
            // 8. FLEX TAKEOFF
            // ==========================================
            _buildSectionHeader('FLEX TAKEOFF'),
            _buildCard(
              padding: const EdgeInsets.all(12),
              children: [
                _buildSubHeader('TFLEX cannot be:'),
                _buildDataRow('Higher than TMAXFLEX', [
                  'equal to ISA + 53 °C',
                  'equal to ISA + 55 °C',
                  'equal to ISA + 55 °C',
                  'equal to ISA + 50 °C'
                ]),
                _buildDivider(),
                _buildMergedRow('Lower than the flat temperature (TREF).',
                    'Applicable to all'),
                _buildDivider(),
                _buildMergedRow(
                    'Lower than the actual OAT.', 'Applicable to all'),
                _buildDivider(),
                _buildInfoText(
                    'TMAXFLEX corresponds to a reduction of 25 % from the full rated takeoff thrust.',
                    isItalic: true),
                const SizedBox(height: 8),
                Text(
                  'FLEX takeoff is not permitted on contaminated runways',
                  style: TextStyle(
                      color: warningColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
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
            'ENGINES',
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
        Expanded(flex: 12, child: _headerBadge('SERIES', cardBorder)),
        const SizedBox(width: 4),
        Expanded(
            flex: 10, child: _headerBadge('A320 CFM', Colors.blue.shade600)),
        const SizedBox(width: 4),
        Expanded(
            flex: 10, child: _headerBadge('A320 IAE', Colors.blue.shade800)),
        const SizedBox(width: 4),
        Expanded(
            flex: 10, child: _headerBadge('A320N LEAP', Colors.green.shade500)),
        const SizedBox(width: 4),
        Expanded(
            flex: 10, child: _headerBadge('A320N PW', Colors.green.shade700)),
      ],
    );
  }

  Widget _headerBadge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
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
      padding: const EdgeInsets.only(left: 4, bottom: 8, top: 16),
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

  Widget _buildSubHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          color: textMain,
          fontWeight: FontWeight.w700,
          fontSize: 12,
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
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: cardBorder, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
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

  Widget _buildDataRow(String title, List<String> values, {Color? valueColor}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 12, child: _buildRowTitle(title)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(values[0], color: valueColor)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(values[1], color: valueColor)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(values[2], color: valueColor)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(values[3], color: valueColor)),
      ],
    );
  }

  Widget _buildDataRowCustom(
      String title, String v1, String v2, String v3, String v4) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 12, child: _buildRowTitle(title)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(v1)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(v2)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(v3)),
        const SizedBox(width: 4),
        Expanded(flex: 10, child: _buildRowValue(v4)),
      ],
    );
  }

  Widget _buildMergedRow(String title, String mergedValue) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 12, child: _buildRowTitle(title)),
        const SizedBox(width: 4),
        Expanded(
          flex: 40, // 10 * 4 columns
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            decoration: BoxDecoration(
              color: gradientBottom.withOpacity(0.5),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: cardBorder.withOpacity(0.5)),
            ),
            child: Text(
              mergedValue,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textMain, fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEgtHeaderRow() {
    return Row(
      children: [
        Expanded(
            flex: 10,
            child: Text('Condition',
                style: TextStyle(
                    color: textMuted,
                    fontSize: 10,
                    fontWeight: FontWeight.bold))),
        const SizedBox(width: 2),
        Expanded(
            flex: 8,
            child: Text('Time Limit',
                style: TextStyle(
                    color: textMuted,
                    fontSize: 10,
                    fontWeight: FontWeight.bold))),
        const SizedBox(width: 4),
        Expanded(
            flex: 34,
            child: Text('EGT Limit (CFM | IAE | LEAP | PW)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textMuted,
                    fontSize: 10,
                    fontWeight: FontWeight.bold))),
      ],
    );
  }

  Widget _buildEgtDataRow(
      String condition, String timeLimit, List<String> egtValues) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 10,
            child: Text(condition,
                style: TextStyle(
                    color: textMuted,
                    fontSize: 10,
                    fontWeight: FontWeight.w600))),
        const SizedBox(width: 2),
        Expanded(
            flex: 8,
            child: Text(timeLimit,
                style: TextStyle(color: textMuted, fontSize: 10))),
        const SizedBox(width: 4),
        Expanded(flex: 8, child: _buildRowValue(egtValues[0])),
        const SizedBox(width: 2),
        Expanded(flex: 8, child: _buildRowValue(egtValues[1])),
        const SizedBox(width: 2),
        Expanded(flex: 8, child: _buildRowValue(egtValues[2])),
        const SizedBox(width: 2),
        Expanded(flex: 8, child: _buildRowValue(egtValues[3])),
      ],
    );
  }

  Widget _buildRowTitle(String text) {
    return Text(
      text,
      style: TextStyle(
          color: textMuted,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          height: 1.3),
    );
  }

  Widget _buildRowValue(String text, {Color? color}) {
    if (text == '-') {
      return Text('-',
          textAlign: TextAlign.center,
          style: TextStyle(color: textMuted.withOpacity(0.5), fontSize: 11));
    }
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color ?? textMain,
          fontSize: 10,
          fontWeight: FontWeight.w600,
          height: 1.3),
    );
  }

  Widget _buildInfoText(String text,
      {bool center = false, bool isItalic = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        text,
        textAlign: center ? TextAlign.center : TextAlign.left,
        style: TextStyle(
          color: textMuted,
          fontSize: 11,
          height: 1.4,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        ),
      ),
    );
  }

  Widget _buildNoteText(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: gradientBottom.withOpacity(0.4),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: cardBorder),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: noteColor,
            fontSize: 11,
            fontStyle: FontStyle.italic,
            height: 1.4),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Divider(color: cardBorder, height: 1, thickness: 1),
    );
  }
}
