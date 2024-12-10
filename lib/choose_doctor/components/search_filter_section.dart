import 'package:flutter/material.dart';

class SearchFilterSection extends StatelessWidget {
  const SearchFilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[50],
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: const [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FilterChip(
                  label: "Available Today",
                  isSelected: true,
                  isPrimary: true,
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: "In-Person",
                  isSelected: false,
                  isPrimary: false,
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: "Via Text",
                  isSelected: false,
                  isPrimary: false,
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.tune),
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isPrimary;

  const FilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.isPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? (isPrimary ? const Color(0xFF0052FF) : Colors.white)
            : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected
              ? (isPrimary ? const Color(0xFF0052FF) : Colors.grey.shade300)
              : Colors.grey.shade300,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? (isPrimary ? Colors.white : Colors.black)
                  : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (isSelected) ...[
            const SizedBox(width: 4),
            Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: isPrimary ? Colors.white : Colors.black,
            ),
          ],
        ],
      ),
    );
  }
}