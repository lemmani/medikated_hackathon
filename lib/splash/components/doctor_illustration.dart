import 'package:flutter/material.dart';

class DoctorIllustration extends StatelessWidget {
  const DoctorIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Blue corner brackets
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.blue[700]!, width: 4),
                left: BorderSide(color: Colors.blue[700]!, width: 4),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.blue[700]!, width: 4),
                right: BorderSide(color: Colors.blue[700]!, width: 4),
              ),
            ),
          ),
        ),
        // Replace this with your actual illustration
        Image.asset(
          'assets/images/doctor_illustration.png',
          height: 300,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}