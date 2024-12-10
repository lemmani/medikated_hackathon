import 'package:flutter/material.dart';
import 'components/calendar_header.dart';
import 'components/calendar_grid.dart';
import 'components/time_slots.dart';
import 'components/bottom_nav_bar.dart';
import 'models/appointment.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appointment = Appointment(
      doctor: "Dr. Frank Ufondu",
      time: DateTime(2022, 6, 21, 12, 0),
      duration: const Duration(hours: 1),
    );

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
              child: const Text(
                'Calendar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CalendarHeader(),
                    const CalendarGrid(
                      year: 2022,
                      month: 6,
                      selectedDay: 21,
                    ),
                    TimeSlots(appointments: [appointment]),
                  ],
                ),
              ),
            ),
            const CustomBottomNavBar(selectedIndex: 2),
          ],
        ),
      ),
    );
  }
}