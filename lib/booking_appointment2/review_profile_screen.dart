import 'package:flutter/material.dart';
import 'components/review_header.dart';
import 'components/health_concern_banner.dart';
import 'components/info_section.dart';

class ReviewProfileScreen extends StatelessWidget {
  const ReviewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ReviewHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Make sure all details are correct as these information would aid the Medical Practitioner.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const HealthConcernBanner(),
                      const SizedBox(height: 24),
                      const InfoSection(
                        title: 'How long have you felt this way?',
                        content: '3 Days',
                      ),
                      const InfoSection(
                        title: 'List of symptoms',
                        content: 'Difficulty sleeping, Fever, Loss of taste',
                      ),
                      const InfoSection(
                        title: 'Active Medications',
                        content: 'No',
                      ),
                      const InfoSection(
                        title: 'Drug Allergies',
                        content: 'No',
                      ),
                      const InfoSection(
                        title: 'Medical Conditions',
                        content: 'No',
                      ),
                      const InfoSection(
                        title: 'Surgeries',
                        content: 'No',
                      ),
                      const InfoSection(
                        title: 'Family History',
                        content: 'No',
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Next — Confirm Payment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}