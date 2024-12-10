import 'package:flutter/material.dart';
import 'components/doctor_illustration.dart';
import 'components/page_indicator.dart';
import 'components/content_section.dart';
import 'components/sign_in_button.dart';

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
              const SizedBox(height: 40),
              const DoctorIllustration(),
              const SizedBox(height: 20),
              const PageIndicator(
                totalDots: 2,
                currentIndex: 0,
              ),
              const SizedBox(height: 32),
              const ContentSection(
                title: 'Video consult top doctors from the comfort of your home.',
                subtitle: 'These are Specialists in their respective fields, which includes Brain & Nervous system',
              ),
              const Spacer(),
              const SignInButton(),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}