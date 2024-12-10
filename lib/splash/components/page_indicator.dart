import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int totalDots;
  final int currentIndex;

  const PageIndicator({
    super.key,
    required this.totalDots,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalDots,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex
                ? Colors.blue[700]
                : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}