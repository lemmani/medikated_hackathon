import 'package:flutter/material.dart';
import 'components/appointment_header.dart';
import 'components/patient_selector.dart';
import 'components/location_selector.dart';
import 'components/visit_reason_grid.dart';
import 'components/emergency_notice.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppointmentHeader(),
                const SizedBox(height: 24),
                const PatientSelector(),
                const SizedBox(height: 32),
                const LocationSelector(),
                const SizedBox(height: 32),
                Text(
                  "What's the main reason for your visit?",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                const VisitReasonGrid(),
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
                      'Next — Select a Cader',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const EmergencyNotice(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}