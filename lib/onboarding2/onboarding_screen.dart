import 'package:flutter/material.dart';
import 'components/clock_illustration.dart';
import 'components/page_indicator.dart';
import 'components/content_section.dart';
import 'components/auth_buttons.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              ClockIllustration(),
              SizedBox(height: 32),
              PageIndicator(
                totalDots: 2,
                currentIndex: 1,
              ),
              SizedBox(height: 32),
              ContentSection(
                title: 'Communicate in the best & effective way possible.',
                subtitle: 'Time & health are two precious assets that we don\'t compromise on.',
              ),
              Spacer(),
              AuthButtons(),
              SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}