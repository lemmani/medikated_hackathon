import 'package:flutter/material.dart';
import 'components/calendar_header.dart';
import 'components/appointments_section.dart';
import 'components/today_appointment.dart';
import 'components/day_section.dart';
import 'components/bottom_nav_bar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CalendarHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppointmentsSection(),
                      const SizedBox(height: 24),
                      const Text(
                        "Today's Appointment",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TodayAppointment(),
                      const SizedBox(height: 16),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                        label: const Text(
                          'Add an Appointment',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const DaySection(
                        title: 'Tomorrow',
                      ),
                      const DaySection(
                        title: 'Friday',
                      ),
                      const DaySection(
                        title: 'Saturday',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}