// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320LimitationsMenuWidget extends StatefulWidget {
  const A320LimitationsMenuWidget({
    Key? key,
    this.width,
    this.height,
    this.onAircraftGeneralTap,
    this.onEnginesTap,
    this.onFuelTap,
    this.onElectricalTap,
    this.onAirBleedTap,
    this.onAutoFlightTap,
    this.onFlightControlsTap,
    this.onLandingGearTap,
    this.onIceProtectionTap,
    this.onOxygenTap,
    this.onSurveillanceTap,
    this.onApuTap,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function()? onAircraftGeneralTap;
  final Future<dynamic> Function()? onEnginesTap;
  final Future<dynamic> Function()? onFuelTap;
  final Future<dynamic> Function()? onElectricalTap;
  final Future<dynamic> Function()? onAirBleedTap;
  final Future<dynamic> Function()? onAutoFlightTap;
  final Future<dynamic> Function()? onFlightControlsTap;
  final Future<dynamic> Function()? onLandingGearTap;
  final Future<dynamic> Function()? onIceProtectionTap;
  final Future<dynamic> Function()? onOxygenTap;
  final Future<dynamic> Function()? onSurveillanceTap;
  final Future<dynamic> Function()? onApuTap;

  @override
  A320LimitationsMenuWidgetState createState() =>
      A320LimitationsMenuWidgetState();
}

class A320LimitationsMenuWidgetState extends State<A320LimitationsMenuWidget> {
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
            _buildHeader(),
            const SizedBox(height: 24),
            _buildMenuCard(
              title: 'AIRCRAFT GENERAL',
              icon: Icons.airplanemode_active,
              onTap: widget.onAircraftGeneralTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'ENGINES',
              icon: Icons.settings_suggest,
              onTap: widget.onEnginesTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'FUEL',
              icon: Icons.local_gas_station,
              onTap: widget.onFuelTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'ELECTRICAL SYSTEM',
              icon: Icons.bolt,
              onTap: widget.onElectricalTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'AIR BLEED',
              icon: Icons.air,
              onTap: widget.onAirBleedTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'AUTO FLIGHT & FMGS',
              icon: Icons.alt_route,
              onTap: widget.onAutoFlightTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'FLIGHT CONTROLS',
              icon: Icons.gamepad,
              onTap: widget.onFlightControlsTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'LANDING GEAR',
              icon: Icons.flight_land,
              onTap: widget.onLandingGearTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'ICE AND RAIN PROTECTION',
              icon: Icons.ac_unit,
              onTap: widget.onIceProtectionTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'OXYGEN',
              icon: Icons.bubble_chart,
              onTap: widget.onOxygenTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'SURVEILLANCE',
              icon: Icons.radar,
              onTap: widget.onSurveillanceTap,
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              title: 'APU',
              icon: Icons.power,
              onTap: widget.onApuTap,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // ==========================================
  // --- UI HELPER METHODS ---
  // ==========================================

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          'A320 LIMITATIONS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: textMain,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 60,
          height: 3,
          decoration: BoxDecoration(
            color: accentCyan,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuCard({
    required String title,
    required IconData icon,
    required Future<dynamic> Function()? onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          if (onTap != null) {
            await onTap();
          }
        },
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          decoration: BoxDecoration(
            color: cardBg,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: cardBorder, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: accentCyan,
                size: 20,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: textMain,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: textMuted,
                size: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
