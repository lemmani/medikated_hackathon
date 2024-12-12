import 'package:flutter/material.dart';
import 'components/profile_header.dart';
import 'components/meeting_info.dart';
import 'components/action_item.dart';
import '../book_appoinment/appointment_screen.dart';

class VirtualMeetingPage extends StatelessWidget {
  const VirtualMeetingPage({super.key, required Null Function() onScheduleAppointment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const ProfileHeader(
                imageUrl: 'https://example.com/doctor-image.jpg', // Replace with actual image URL
              ),
              const SizedBox(height: 24),
              const MeetingInfo(
                doctorName: 'Dr. Frank Ufondu',
                dateTime: '22nd Wednesday, June 2022 at 12:30PM CAT',
              ),
              const SizedBox(height: 32),
              ActionItem(
                icon: Icons.videocam,
                title: 'Test your device prior to visit',
                subtitle: 'Make sure video, audio and internet connections are working.',
                onTap: () {
                  // Handle device test
                },
              ),
              const SizedBox(height: 16),
              ActionItem(
                icon: Icons.calendar_today,
                title: 'Schedule an Appointment',
                subtitle: 'Schedule an appointment with available doctors.',
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AppointmentScreen  ()),
                      ); 
                  // Handle appointment scheduling
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}