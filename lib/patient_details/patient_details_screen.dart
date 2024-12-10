import 'package:flutter/material.dart';
import 'component/custom_app_bar.dart';
import 'component/doctor_profile.dart';
import 'component/metric_card.dart';
import 'component/report_list.dart';
import 'component/bottom_nav_bar.dart';

class PatientDetailsScreen extends StatelessWidget {
  const PatientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: 'Patient Details'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const DoctorProfile(
                      name: 'Dr. Frank',
                      imageUrl: '/placeholder.svg',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: MetricCard(
                              title: 'Heart rate',
                              value: '97',
                              unit: 'bpm',
                              color: const Color(0xFF0052FF),
                              child: CustomPaint(
                                size: const Size(100, 30),
                                painter: HeartLinePainter(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          const Expanded(
                            child: MetricCard(
                              title: 'Blood Group',
                              value: 'A+',
                              color: Color(0xFF76B947),
                              icon: Icons.opacity,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: MetricCard(
                              title: 'Weight',
                              value: '103',
                              unit: 'lbs',
                              color: const Color(0xFF0052FF),
                              icon: Icons.fitness_center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ReportList(),
                  ],
                ),
              ),
            ),
            const CustomBottomNavBar(selectedIndex: 4),
          ],
        ),
      ),
    );
  }
}

class HeartLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width * 0.2, size.height / 2);
    path.lineTo(size.width * 0.3, size.height * 0.2);
    path.lineTo(size.width * 0.4, size.height * 0.8);
    path.lineTo(size.width * 0.5, size.height * 0.2);
    path.lineTo(size.width * 0.6, size.height * 0.8);
    path.lineTo(size.width * 0.7, size.height / 2);
    path.lineTo(size.width, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}