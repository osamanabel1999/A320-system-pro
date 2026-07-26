// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320AircraftGeneralWidget extends StatefulWidget {
  const A320AircraftGeneralWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<A320AircraftGeneralWidget> createState() =>
      _A320AircraftGeneralWidgetState();
}

class _A320AircraftGeneralWidgetState extends State<A320AircraftGeneralWidget> {
  // --- Professional Modern Dark Theme Colors ---
  final Color gradientTop = const Color(0xFF0A1924); // Deep Teal/Navy
  final Color gradientBottom =
      const Color(0xFF0F172A); // Dark Slate (Your original color)
  final Color cardBg = const Color(0xFF1A2634); // Slightly lighter for cards
  final Color cardBorder = const Color(0xFF2C3E50); // Subtle border
  final Color accentCyan =
      const Color(0xFF4DD0E1); // Vibrant Cyan for headers (like image)
  final Color textMain = const Color(0xFFF8FAFC); // Crisp white
  final Color textMuted = const Color(0xFF94A3B8); // Gray for secondary text
  final Color noteColor =
      const Color(0xFFFCA5A5); // Soft red for handwritten notes

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

            // --- AIRCRAFT GENERAL ---
            _buildSectionHeader('OVERVIEW'),
            _buildCard(
              children: [
                _buildInfoText(
                    'The A320 is a subsonic, medium range, civil transport aircraft',
                    center: true),
                _buildDivider(),
                _buildKeyValueRow('MINIMUM FLIGHT CREW', '2'),
                _buildDivider(),
                _buildKeyValueRow('MINIMUM CABIN CREW',
                    '4/195 PAX\n4/180 PAX\n4/165 PAX\n3/150 PAX\n3/145 PAX'),
                _buildDivider(),
                _buildMultiColRow(
                    'PAX MAX SEATING', ['180 (CFM/IAE)', '194 (NEO)']),
                _buildDivider(),
                _buildMultiColRow('TYPICAL SEATING 2 CLASS',
                    ['140-170 (CFM/IAE)', '150-180 (NEO)']),
                _buildDivider(),
                _buildKeyValueRow('CARGO LD3 CAPACITY UNDERFLOOR', '7 LD3-45W'),
                _buildDivider(),
                _buildKeyValueRow('MAX PALLET NUMBER UNDERFLOOR', '7'),
                _buildDivider(),
                _buildMultiColRow(
                    'RANGE', ['3 350 nm with Sharklets', '3 400 nm (NEO)'],
                    note: '3000NM w/o SHARKLETS (CEO)'),
                _buildDivider(),
                _buildKeyValueRow('BAGGAGE/CARGO COMPARTMENT',
                    'Forward: 3,402 kg MAX\nAft: 4,536 kg MAX\nRear (bulk): 1,497 kg MAX'),
                _buildDivider(),
                _buildKeyValueRow('ETOPS', '120/180 min'),
              ],
            ),

            // --- PRINCIPAL DIMENSIONS ---
            _buildSectionHeader('PRINCIPAL DIMENSIONS'),
            _buildCard(
              children: [
                _buildKeyValueRow('LENGTH', '37.57 m', note: 'HEIGHT - 12.14m'),
                _buildDivider(),
                _buildKeyValueRow('CABIN LENGTH', '27.51 m'),
                _buildDivider(),
                _buildKeyValueRow('FUSELAGE WIDTH', '3.95 m'),
                _buildDivider(),
                _buildKeyValueRow('MAX CABIN WIDTH', '3.70 m'),
                _buildDivider(),
                _buildKeyValueRow(
                    'WINGSPAN (GEOMETRIC)', '34.10 m or 35.80 m (w/ sharklets)',
                    note:
                        'IF WING CLEARS OBST, THE TAIL WILL... 3.5% IMPROVED PERFORMANCE. RANGE - TOW PAYLOAD - ETC.'),
                _buildDivider(),
                _buildKeyValueRow('TAIL HEIGHT', '11.76 m'),
                _buildDivider(),
                _buildKeyValueRow('TRACK', '7.59 m'),
                _buildDivider(),
                _buildKeyValueRow('WHEELBASE', '12.64 m'),
                _buildDivider(),
                _buildKeyValueRow('WING AREA', '122.6 sq m'),
                _buildDivider(),
                _buildKeyValueRow('WING SWEEPBACK', '25°'),
                _buildDivider(),
                _buildKeyValueRow('FUSELAGE HEIGHT', '4.14 m'),
                _buildDivider(),
                _buildKeyValueRow('FREIGHT CAPACITY', '37.41 cu m'),
              ],
            ),

            // --- GROUND CLEARANCE ---
            _buildSectionHeader('GROUND CLEARANCE (TAILSTRIKE PITCH)'),
            _buildCard(
              children: [
                _buildMultiColRow('SHOCK ABSORBER FULLY COMPRESSED',
                    ['2.9° DN - 11.7° UP (CEO)', '1.9° DN - 11.7° UP (NEO)']),
                _buildDivider(),
                _buildMultiColRow('SHOCK ABSORBER FULLY EXTENDED',
                    ['13.5° (CEO)', '13.7° (NEO)']),
              ],
            ),

            // --- ILS & VISUAL GEOMETRY ---
            _buildSectionHeader('ILS FINAL APPROACH & LANDING GEOMETRY'),
            _buildCard(
              children: [
                _buildKeyValueRow('ILS ANTENNA AT 50 ft AT THRESHOLD',
                    'GP 2.5°, 348 m to GS TRANSMITTER'),
                _buildDivider(),
                _buildKeyValueRow('NO FLARE', 'GP 3°, 291 m to GS TRANSMITTER'),
                _buildDivider(),
                _buildKeyValueRow(
                    'MAIN GEAR WHEN ANTENNA AT THRESHOLD', '37 ft'),
                _buildDivider(),
                _buildKeyValueRow('MAIN GEAR AT THRESHOLD', '34 ft (RA)'),
              ],
            ),

            _buildSectionHeader('VISUAL GROUND SEGMENTS & GEOMETRY'),
            _buildCard(
              children: [
                _buildInfoText(
                    'For a CAT III landing (60 m minimum visual segment), the minimum Runway Visual Range (RVR) is 103 m at 15 ft.',
                    isItalic: true),
                _buildDivider(),
                _buildKeyValueRow(
                    'PILOT\'S EYE LEVEL 15 ft AGL', '20° / 12.5 m'),
              ],
            ),

            // --- LIMITS & ENVELOPE ---
            _buildSectionHeader('FLIGHT MANEUVERING LOAD LIMITS'),
            _buildCard(
              children: [
                _buildKeyValueRow('Clean configuration', '-1 g to +2.5 g'),
                _buildDivider(),
                _buildKeyValueRow('Other configurations', '0 g to +2 g'),
              ],
            ),

            _buildSectionHeader('ENVIRONMENTAL ENVELOPE'),
            _buildCard(
              children: [
                _buildMultiColRow('Maximum Operating Altitude',
                    ['39,100 ft - 41,000 ft (CEO)', '39,800 ft (NEO)']),
              ],
            ),

            // --- AIRPORT OPERATIONS ---
            _buildSectionHeader('AIRPORT OPERATIONS & WIND LIMITATIONS'),
            _buildCard(
              children: [
                _buildKeyValueRow('Runway slope (mean)', '± 2 %'),
                _buildDivider(),
                _buildKeyValueRow('Runway Altitude', '9,200 ft / - 2000 ft'),
                _buildDivider(),
                _buildKeyValueRow('Nominal runway width', '45 m'),
                _buildDivider(),
                _buildKeyValueRow('Minimal runway width', '30 m'),
                _buildDivider(),
                _buildMultiColRow('Max demonstrated x-wind T-O',
                    ['38 kts (Gust inc) CEO', '35 kts (Gust inc) NEO']),
                _buildDivider(),
                _buildKeyValueRow(
                    'Max demonstrated x-wind LDG', '38 kts (Gust included)'),
                _buildDivider(),
                _buildKeyValueRow('Maximum tailwind for takeoff', '15 kt'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Maximum tailwind for landing', '15 kt (>10kts Conf FULL)'),
              ],
            ),

            // --- DOORS ---
            _buildSectionHeader('PASSENGER & CARGO DOORS OPERATION'),
            _buildCard(
              children: [
                _buildKeyValueRow('Max wind for PAX door', '65 kt'),
                _buildDivider(),
                _buildKeyValueRow(
                    'Max wind for FWD and AFT cargo door', '40 kt'),
                _buildDivider(),
                _buildNoteText(
                    '- Aircraft nose is into the wind, or if the FWD and AFT cargo doors are on the leeward side 50 kt\n- FWD and AFT cargo doors must be closed before the wind speed exceeds 65 kt.'),
              ],
            ),

            // ================= IMAGE 2 DATA =================
            const SizedBox(height: 16),
            const Divider(color: Colors.white24, thickness: 1),
            const SizedBox(height: 16),

            // --- CONTAMINATED RUNWAYS ---
            _buildSectionHeader(
                'MAX REC CROSSWIND ON WET & CONTAMINATED RUNWAYS'),
            _buildCard(
              padding: EdgeInsets.zero,
              children: [
                _buildTableHeaderRow([
                  'ESF/PIREP',
                  'T-O (CEO)',
                  'LDG (CEO)',
                  'T-O (NEO)',
                  'LDG (NEO)'
                ]),
                _buildTableRow(['GOOD', '38 kt', '38 kt', '35 kt', '38 kt']),
                _buildTableRow(
                    ['GOOD TO MEDIUM', '29 kt', '29 kt', '29 kt', '29 kt']),
                _buildTableRow(['MEDIUM', '25 kt', '25 kt', '25 kt', '25 kt']),
                _buildTableRow(
                    ['MEDIUM TO POOR', '20 kt', '20 kt', '20 kt', '20 kt']),
                _buildTableRow(['POOR', '15 kt', '15 kt', '15 kt', '15 kt'],
                    isLast: true),
              ],
            ),

            _buildSectionHeader('TAKEOFF LIMITATIONS ON CONTAMINATED RUNWAYS'),
            _buildCard(
              children: [
                _buildKeyValueRow(
                    'Takeoff is not recommended on the following runway conditions:',
                    '• Wet ice\n• Water on top of Compacted Snow\n• Dry Snow or Wet Snow over Ice'),
              ],
            ),

            // --- SPEEDS ---
            _buildSectionHeader('MAXIMUM FLAPS/SLATS SPEEDS'),
            _buildCard(
              padding: EdgeInsets.zero,
              children: [
                _buildTableHeaderRow(
                    ['Flaps Lever', 'Config Display', 'Max Speed', 'Phase']),
                _buildTableRow(['0', '-', 'VMO/MMO', 'CRUISE']),
                _buildTableRow(
                    ['1', '1\n1+F', '230 kt\n215 kt', 'HOLDING\nT-O']),
                _buildTableRow(['2', '2', '200 kt', 'T-O/APP']),
                _buildTableRow(['3', '3', '185 kt', 'T-O/APP/LDG']),
                _buildTableRow(['FULL', 'FULL', '177 kt', 'LDG'], isLast: true),
              ],
            ),

            _buildSectionHeader('EXTENDED FLAPS/SLATS SPEED (VFE)'),
            _buildCard(
              padding: EdgeInsets.zero,
              children: [
                _buildTableHeaderRow(
                    ['Config', 'Slats/Flaps (°)', 'VFE (kt)', 'Phase']),
                _buildTableRow([
                  '1',
                  '18/0\n*18/10',
                  '230 kt\n215 kt',
                  'Int Approach\nTake-off'
                ]),
                _buildTableRow(['2', '22/15', '200 kt', 'T-O & Approach']),
                _buildTableRow(['3', '22/20', '185 kt', 'T-O, App, Ldg']),
                _buildTableRow(['FULL', '27/35**', '177 kt', 'Landing'],
                    isLast: true),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: _buildNoteText(
                      '* Auto flap retraction at 210 kt in take-off configuration\n** 27/40 for A320 equipped with IAE or CFM LEAP-1A engines'),
                ),
              ],
            ),

            _buildSectionHeader('MAXIMUM SPEEDS'),
            _buildCard(
              children: [
                _buildKeyValueRow('COCKPIT WINDOW OPEN', '200 kts'),
                _buildDivider(),
                _buildKeyValueRow('VMO', '350 kt'),
                _buildDivider(),
                _buildKeyValueRow('MMO', 'M 0.82'),
                _buildDivider(),
                _buildKeyValueRow('WIPERS MAXIMUM', '230 kt'),
                _buildDivider(),
                _buildKeyValueRow('MAXIMUM TIRE SPEED (Ground)', '195.5 kt'),
              ],
            ),

            _buildSectionHeader('LANDING GEAR SPEEDS'),
            _buildCard(
              children: [
                _buildKeyValueRow('Extended (VLE)', '280 kt / M 0.67'),
                _buildDivider(),
                _buildKeyValueRow('Extension (VLO)', '250 kt / M 0.60'),
                _buildDivider(),
                _buildKeyValueRow('Retraction (VLO)', '220 kt / M 0.54'),
              ],
            ),

            // --- MISC & WEIGHTS ---
            _buildSectionHeader('TAXI SPEED AND BRAKING'),
            _buildCard(
              children: [
                _buildKeyValueRow('Weight > 76 000 kg',
                    'Do not exceed a taxi speed of 20 kt during a turn.'),
                _buildDivider(),
                _buildKeyValueRow('Long and straight taxiways', '30 kt'),
              ],
            ),

            _buildSectionHeader('SEVERE TURBULENCE'),
            _buildCard(
              children: [
                _buildMultiColRow(
                    'Below FL 200', ['250 kt (CEO)', '260 kt (NEO)']),
                _buildDivider(),
                _buildMultiColRow('FL 200 - FL 310 (FL 320 - NEO)',
                    ['275 kt (CEO)', '280 kt (NEO)']),
                _buildDivider(),
                _buildMultiColRow('Above FL 310 (FL 330 - NEO)',
                    ['M 0.76 (CEO)', 'M 0.76 (NEO)']),
              ],
            ),

            _buildSectionHeader('WEIGHT LIMITATIONS'),
            _buildCard(
              children: [
                _buildKeyValueRow('Maximum ramp weight', '78.4 t'),
                _buildDivider(),
                _buildKeyValueRow('Maximum takeoff weight', '78 t'),
                _buildDivider(),
                _buildKeyValueRow('Maximum landing weight', '66 t'),
                _buildDivider(),
                _buildKeyValueRow('Maximum zero fuel weight', '62.5 t'),
                _buildDivider(),
                _buildMultiColRow('Minimum weight',
                    ['37.2 t (CFM)', '40.6 t (LEAP)', '40.3 t (PW)']),
                _buildDivider(),
                _buildNoteText(
                    '- In exceptional cases (in flight turn back or diversion), an immediate landing at weight above maximum landing weight is permitted, provided the pilot follows the overweight landing procedure.'),
              ],
            ),

            _buildSectionHeader('MINIMUM CONTROL SPEEDS'),
            _buildCard(
              children: [
                _buildInfoText('Refer to your FCOM limitations',
                    isItalic: true, center: true),
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
          'A320 AIRCRAFT GENERAL',
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
          'LIMITATIONS & SPECIFICATIONS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: accentCyan,
            letterSpacing: 2.0,
          ),
        ),
      ],
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

  Widget _buildKeyValueRow(String key, String value, {String? note}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  key,
                  style: TextStyle(
                      color: textMuted,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 4,
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: textMain,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          if (note != null)
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                note,
                style: TextStyle(
                    color: noteColor,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
              ),
            )
        ],
      ),
    );
  }

  Widget _buildMultiColRow(String key, List<String> values, {String? note}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
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
                        margin: const EdgeInsets.only(right: 8.0),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          color: gradientBottom.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          val,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textMain,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ))
                .toList(),
          ),
          if (note != null)
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                note,
                style: TextStyle(
                    color: noteColor,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
              ),
            )
        ],
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
        fontSize: 14,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      ),
    );
  }

  Widget _buildNoteText(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: gradientBottom.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textMuted,
            fontSize: 13,
            fontStyle: FontStyle.italic,
            height: 1.4),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Divider(color: cardBorder, height: 1, thickness: 1),
    );
  }

  // --- Table Builders for complex data ---

  Widget _buildTableHeaderRow(List<String> headers) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: cardBorder, width: 1.5)),
      ),
      child: Row(
        children: headers
            .map((h) => Expanded(
                  child: Text(
                    h,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: accentCyan,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildTableRow(List<String> data, {bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(bottom: BorderSide(color: cardBorder, width: 1)),
      ),
      child: Row(
        children: data
            .map((d) => Expanded(
                  child: Text(
                    d,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textMain,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
