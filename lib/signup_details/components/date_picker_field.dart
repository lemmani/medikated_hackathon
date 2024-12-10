import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  String? _month;
  String? _day;
  String? _year;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Date of birth',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: _buildDropdown(
                hint: 'Month',
                value: _month,
                items: List.generate(12, (index) => (index + 1).toString()),
                onChanged: (value) => setState(() => _month = value),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildDropdown(
                hint: 'Day',
                value: _day,
                items: List.generate(31, (index) => (index + 1).toString()),
                onChanged: (value) => setState(() => _day = value),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 2,
              child: _buildDropdown(
                hint: 'Year',
                value: _year,
                items: List.generate(100, (index) => (2024 - index).toString()),
                onChanged: (value) => setState(() => _year = value),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String hint,
    required String? value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            hint: Text(hint),
            isExpanded: true,
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
