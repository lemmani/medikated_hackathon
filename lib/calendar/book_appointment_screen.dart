import 'package:flutter/material.dart';
import 'components/appointment_header.dart';
import 'components/doctor_info.dart';
import 'components/service_info.dart';
import 'components/date_time_selector.dart';
import 'components/notes_section.dart';
import 'components/attachments_section.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppointmentHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Confirm a date and time for your appointment with a general practitioner. Include a note aswell',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const DoctorInfo(),
                      const SizedBox(height: 24),
                      const ServiceInfo(),
                      const SizedBox(height: 24),
                      const DateTimeSelector(),
                      const SizedBox(height: 24),
                      const NotesSection(),
                      const SizedBox(height: 24),
                      const AttachmentsSection(),
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
                            'Next — Heath Profile',
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