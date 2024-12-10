import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Other Services',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _PaymentOption(
              icon: 'assets/paypal.png',
              name: 'Paypal',
              onTap: () {},
            ),
            _PaymentOption(
              icon: 'assets/google_pay.png',
              name: 'Google Pay',
              onTap: () {},
            ),
            _PaymentOption(
              icon: 'assets/apple_pay.png',
              name: 'Apple Pay',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class _PaymentOption extends StatelessWidget {
  final String icon;
  final String name;
  final VoidCallback onTap;

  const _PaymentOption({
    required this.icon,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}