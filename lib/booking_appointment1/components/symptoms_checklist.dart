import 'package:flutter/material.dart';

class SymptomsChecklist extends StatelessWidget {
  const SymptomsChecklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Do you have any of these symptoms?',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'General symptoms',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: const [
            SymptomCheckbox(label: 'Difficulty sleeping'),
            SymptomCheckbox(label: 'Fatigue / weakness'),
            SymptomCheckbox(label: 'Fever'),
            SymptomCheckbox(label: 'Loss of appetite'),
            SymptomCheckbox(label: 'Mood changes'),
            SymptomCheckbox(label: 'Night sweats'),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          'Head / Neck',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: const [
            SymptomCheckbox(label: 'Congestions'),
            SymptomCheckbox(label: 'Ear pain'),
            SymptomCheckbox(label: 'Eye redness'),
            SymptomCheckbox(label: 'Headaches'),
            SymptomCheckbox(label: 'Loss of smell'),
            SymptomCheckbox(label: 'Loss of taste'),
          ],
        ),
      ],
    );
  }
}

class SymptomCheckbox extends StatelessWidget {
  final String label;

  const SymptomCheckbox({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: false,
            onChanged: (value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}