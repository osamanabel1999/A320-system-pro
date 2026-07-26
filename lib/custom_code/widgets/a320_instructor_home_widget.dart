// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class A320InstructorHomeWidget extends StatefulWidget {
  const A320InstructorHomeWidget({
    Key? key,
    this.width,
    this.height,
    this.onSystemLimitationsTap,
    this.onSystemsArchitectureTap,
    this.onTechnicalNotesTap,
    this.onPerformanceTheoryTap,
    this.onDispatchCalculatorTap,
    this.onInteractiveFlightDeckTap,
    this.onPanelFamiliarizationTap,
    this.onProficiencyExamTap,
  }) : super(key: key);

  final double? width;
  final double? height;

  // تعريف أكشن منفصل لكل زرار ليظهر في FlutterFlow
  final Future<dynamic> Function()? onSystemLimitationsTap;
  final Future<dynamic> Function()? onSystemsArchitectureTap;
  final Future<dynamic> Function()? onTechnicalNotesTap;
  final Future<dynamic> Function()? onPerformanceTheoryTap;
  final Future<dynamic> Function()? onDispatchCalculatorTap;
  final Future<dynamic> Function()? onInteractiveFlightDeckTap;
  final Future<dynamic> Function()? onPanelFamiliarizationTap;
  final Future<dynamic> Function()? onProficiencyExamTap;

  @override
  State<A320InstructorHomeWidget> createState() =>
      _A320InstructorHomeWidgetState();
}

class _A320InstructorHomeWidgetState extends State<A320InstructorHomeWidget> {
  @override
  Widget build(BuildContext context) {
    // الألوان الرئيسية
    const Color bgColor = Color(0xFF0A192F);
    const Color cardColor = Color(0xFF112240);
    const Color accentColor = Color(0xFF38BDF8);
    const Color textColor = Colors.white;

    // قائمة الأزرار وربطها بالـ Parameters الممررة للويدجت
    final List<Map<String, dynamic>> menuItems = [
      {
        'title': 'System Limitations',
        'icon': Icons.warning_amber_rounded,
        'action': widget.onSystemLimitationsTap,
      },
      {
        'title': 'Visual Systems Guide',
        'icon': Icons.account_tree_outlined,
        'action': widget.onSystemsArchitectureTap,
      },
      {
        'title': 'Systems Study Guide',
        'icon': Icons.menu_book_rounded,
        'action': widget.onTechnicalNotesTap,
      },
      {
        'title': 'Performance Calculator',
        'icon': Icons.flight_takeoff_rounded,
        'action': widget.onPerformanceTheoryTap,
      },
      {
        'title': 'Takeoff & Landing Briefs',
        'icon': Icons.calculate_outlined,
        'action': widget.onDispatchCalculatorTap,
      },
      {
        'title': 'Virtual Flight Deck Trainer',
        'icon': Icons.dashboard_customize_outlined,
        'action': widget.onInteractiveFlightDeckTap,
      },
      {
        'title': 'Cockpit Overview',
        'icon': Icons.view_quilt_rounded,
        'action': widget.onPanelFamiliarizationTap,
      },
      {
        'title': 'Type Rating Exam',
        'icon': Icons.fact_check_outlined,
        'action': widget.onProficiencyExamTap,
      },
    ];

    return Container(
      width: widget.width,
      height: widget.height,
      color: bgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Header Section ---
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: accentColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.flight,
                          color: accentColor,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome to",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "A320 Instructor",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Select a module to begin your training session.",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // --- Grid Section ---
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    return _buildMenuCard(
                      title: menuItems[index]['title'],
                      icon: menuItems[index]['icon'],
                      cardColor: cardColor,
                      accentColor: accentColor,
                      onTap: () async {
                        // تنفيذ الأكشن الخاص بكل زرار
                        if (menuItems[index]['action'] != null) {
                          await menuItems[index]['action']!();
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required String title,
    required IconData icon,
    required Color cardColor,
    required Color accentColor,
    required Future<dynamic> Function()? onTap, // تم تعديل النوع هنا
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withOpacity(0.05),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            splashColor: accentColor.withOpacity(0.1),
            highlightColor: accentColor.withOpacity(0.05),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: accentColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: accentColor,
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
