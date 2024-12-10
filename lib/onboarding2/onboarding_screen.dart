import 'package:flutter/material.dart';
import 'components/clock_illustration.dart';
import 'components/page_indicator.dart';
import 'components/content_section.dart';
import 'components/auth_buttons.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const ClockIllustration(),
              const SizedBox(height: 32),
              const PageIndicator(
                totalDots: 2,
                currentIndex: 1,
              ),
              const SizedBox(height: 32),
              const ContentSection(
                title: 'Communicate in the best & effective way possible.',
                subtitle: 'Time & health are two precious assets that we don\'t compromise on.',
              ),
              const Spacer(),
              const AuthButtons(),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}