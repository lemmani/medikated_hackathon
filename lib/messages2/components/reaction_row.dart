import 'package:flutter/material.dart';
import '../models/message.dart';

class ReactionRow extends StatelessWidget {
  final List<Reaction> reactions;

  const ReactionRow({
    super.key,
    required this.reactions,
  });

  Widget _buildReactionIcon(String type) {
    switch (type) {
      case 'thumbsUp':
        return Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: const Color(0xFF0052FF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.thumb_up,
            color: Colors.white,
            size: 16,
          ),
        );
      case 'heart':
        return Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
            size: 16,
          ),
        );
      case 'smile':
        return Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.sentiment_satisfied_alt,
            color: Colors.black,
            size: 16,
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: reactions
          .map((reaction) => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: _buildReactionIcon(reaction.type),
              ))
          .toList(),
    );
  }
}