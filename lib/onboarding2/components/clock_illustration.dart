import 'dart:math';

import 'package:flutter/material.dart';

class ClockIllustration extends StatelessWidget {
  const ClockIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background circle with shadow effect
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            shape: BoxShape.circle,
          ),
        ),
        // Clock outline
        CustomPaint(
          size: const Size(120, 120),
          painter: ClockPainter(),
        ),
        // Sparkles
        ...List.generate(4, (index) {
          final angle = index * (360 / 4) * (3.14159 / 180);
          return Positioned(
            left: 100 + cos(angle) * 140,
            top: 100 + sin(angle) * 140,
            child: Icon(
              Icons.star,
              color: Colors.blue[200],
              size: 16,
            ),
          );
        }),
      ],
    );
  }
}

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    // Draw clock circle
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      paint,
    );

    // Draw checkmark
    final path = Path();
    path.moveTo(size.width * 0.3, size.height * 0.5);
    path.lineTo(size.width * 0.45, size.height * 0.65);
    path.lineTo(size.width * 0.7, size.height * 0.35);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}