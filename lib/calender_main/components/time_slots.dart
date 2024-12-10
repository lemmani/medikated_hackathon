import 'package:flutter/material.dart';
import '../models/appointment.dart';

class TimeSlots extends StatelessWidget {
  final List<Appointment> appointments;

  const TimeSlots({
    super.key,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int hour = 10; hour <= 18; hour++)
          TimeSlot(
            hour: hour,
            appointment: appointments.firstWhere(
              (apt) => apt.time.hour == hour,
              orElse: () => Appointment(
                doctor: '',
                time: DateTime(2022, 6, 21, hour),
                duration: const Duration(hours: 1),
              ),
            ),
          ),
      ],
    );
  }
}

class TimeSlot extends StatelessWidget {
  final int hour;
  final Appointment appointment;

  const TimeSlot({
    super.key,
    required this.hour,
    required this.appointment,
  });

  String _formatHour(int hour) {
    if (hour == 12) return '12 PM';
    if (hour > 12) return '${hour - 12} PM';
    return '$hour AM';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              _formatHour(hour),
              style: TextStyle(
                color: appointment.doctor.isNotEmpty
                    ? const Color(0xFF0052FF)
                    : Colors.grey,
                fontWeight: appointment.doctor.isNotEmpty
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
          if (appointment.doctor.isNotEmpty)
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF0052FF).withOpacity(0.1),
                  border: Border(
                    left: BorderSide(
                      color: const Color(0xFF0052FF),
                      width: 4,
                    ),
                  ),
                ),
                child: Text(
                  'Appointment with ${appointment.doctor}',
                  style: const TextStyle(
                    color: Color(0xFF0052FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}