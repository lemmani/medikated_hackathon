import 'package:flutter/material.dart';

class CalendarGrid extends StatelessWidget {
  final int year;
  final int month;
  final int selectedDay;

  const CalendarGrid({
    super.key,
    required this.year,
    required this.month,
    required this.selectedDay,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              WeekDayLabel('S'),
              WeekDayLabel('M'),
              WeekDayLabel('T'),
              WeekDayLabel('W'),
              WeekDayLabel('T'),
              WeekDayLabel('F'),
              WeekDayLabel('S'),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DayCell(day: 18, isSelected: false),
              DayCell(day: 19, isSelected: false),
              DayCell(day: 20, isSelected: false),
              DayCell(day: 21, isSelected: true),
              DayCell(day: 22, isSelected: false),
              DayCell(day: 23, isSelected: false),
              DayCell(day: 24, isSelected: false),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class WeekDayLabel extends StatelessWidget {
  final String label;

  const WeekDayLabel(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }
}

class DayCell extends StatelessWidget {
  final int day;
  final bool isSelected;

  const DayCell({
    super.key,
    required this.day,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? const Color(0xFF0052FF) : Colors.transparent,
      ),
      child: Center(
        child: Text(
          day.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}