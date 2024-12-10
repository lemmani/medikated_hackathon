import 'package:flutter/material.dart';

class InsuranceSection extends StatelessWidget {
  const InsuranceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add your insurance plan for additional potential savings and discounts.',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 12),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.blue,
          ),
          label: const Text(
            'Add Insurance',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}