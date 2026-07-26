// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class FlightBriefingsWidget extends StatefulWidget {
  const FlightBriefingsWidget({
    Key? key,
    this.width,
    this.height,
    this.onTakeoffBriefTap,
    this.onLandingBriefTap,
  }) : super(key: key);

  final double? width;
  final double? height;

  // الأكشنز الخاصة بكل زرار
  final Future<dynamic> Function()? onTakeoffBriefTap;
  final Future<dynamic> Function()? onLandingBriefTap;

  @override
  State<FlightBriefingsWidget> createState() => _FlightBriefingsWidgetState();
}

class _FlightBriefingsWidgetState extends State<FlightBriefingsWidget> {
  @override
  Widget build(BuildContext context) {
    // الألوان الرئيسية
    const Color bgColor = Color(0xFF0A192F);
    const Color cardColor = Color(0xFF112240);
    const Color takeoffAccent = Color(0xFF38BDF8); // أزرق للإقلاع
    const Color landingAccent = Color(0xFF10B981); // أخضر زمردي للهبوط
    const Color textPrimary = Colors.white;
    const Color textSecondary = Colors.white54;

    return Container(
      width: widget.width,
      height: widget.height,
      color: bgColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Header Section ---
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: takeoffAccent.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons
                          .record_voice_over_rounded, // أيقونة تعبر عن التحدث/البريفينج
                      color: takeoffAccent,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Standard Operating Procedures",
                        style: TextStyle(
                          color: takeoffAccent,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Flight Briefings",
                        style: TextStyle(
                          color: textPrimary,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Select the briefing phase. Review standard callouts, routing, and emergency contingency plans.",
                style: TextStyle(
                  color: textSecondary,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 40),

              // --- Takeoff Briefing Button ---
              _buildBriefCard(
                title: "Takeoff Briefing",
                subtitle:
                    "Review departure routing, thrust settings, and engine-out procedures (V1 cuts).",
                icon: Icons.flight_takeoff_rounded,
                cardColor: cardColor,
                accentColor: takeoffAccent,
                onTap: () async {
                  if (widget.onTakeoffBriefTap != null) {
                    await widget.onTakeoffBriefTap!();
                  }
                },
              ),

              const SizedBox(height: 20),

              // --- Landing Briefing Button ---
              _buildBriefCard(
                title: "Landing Briefing",
                subtitle:
                    "Review approach type, minimums, autobrake settings, and go-around logic.",
                icon: Icons.flight_land_rounded,
                cardColor: cardColor,
                accentColor: landingAccent,
                onTap: () async {
                  if (widget.onLandingBriefTap != null) {
                    await widget.onLandingBriefTap!();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ويدجت مخصص لتصميم كارت البريفينج باحترافية
  Widget _buildBriefCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color cardColor,
    required Color accentColor,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white.withOpacity(0.05),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          splashColor: accentColor.withOpacity(0.1),
          highlightColor: accentColor.withOpacity(0.05),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                // الأيقونة
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: accentColor.withOpacity(0.15),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    color: accentColor,
                    size: 36,
                  ),
                ),
                const SizedBox(width: 20),
                // النصوص (العنوان والشرح)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 13,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // سهم الانتقال
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white.withOpacity(0.3),
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
