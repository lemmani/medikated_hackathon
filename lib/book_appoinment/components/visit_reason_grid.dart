import 'package:flutter/material.dart';
import 'visit_reason_card.dart';

class VisitReasonGrid extends StatelessWidget {
  const VisitReasonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.1,
      children: const [
        VisitReasonCard(
          icon: Icons.local_hospital,
          title: 'New Health Concern',
          subtitle: 'Find a Doctor',
          backgroundColor: Color(0xFFFFEBEE),
          iconColor: Colors.red,
        ),
        VisitReasonCard(
          icon: Icons.check_circle,
          title: 'Routine checkup, Follow-up or Screening',
          subtitle: 'Find a Doctor',
          backgroundColor: Color(0xFFE3F2FD),
          iconColor: Colors.blue,
        ),
        VisitReasonCard(
          icon: Icons.psychology,
          title: 'General Mental Health Concerns',
          subtitle: 'Find a Doctor',
          backgroundColor: Color(0xFFE8EAF6),
          iconColor: Colors.indigo,
        ),
        VisitReasonCard(
          icon: Icons.coronavirus,
          title: 'COVID-19 Symptoms',
          subtitle: 'Find a Doctor',
          backgroundColor: Color(0xFFFFF3E0),
          iconColor: Colors.orange,
        ),
        VisitReasonCard(
          icon: Icons.favorite,
          title: 'Sex Health Education',
          subtitle: 'Find a Doctor',
          backgroundColor: Color(0xFFFCE4EC),
          iconColor: Colors.pink,
        ),
        VisitReasonCard(
          icon: Icons.help,
          title: 'Other Medical Reasons',
          subtitle: 'Find a Doctor',
          backgroundColor: Color(0xFFF5F5F5),
          iconColor: Colors.grey,
        ),
      ],
    );
  }
}