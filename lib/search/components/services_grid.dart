import 'package:flutter/material.dart';
import 'service_card.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: const [
        ServiceCard(
          icon: Icons.calendar_today,
          title: 'Book an Appointment',
          subtitle: 'Find a Doctor',
          color: Color(0xFFF3E5F5),
          iconColor: Colors.deepPurple,
        ),
        ServiceCard(
          icon: Icons.home,
          title: 'Request a Physical Consultation',
          subtitle: 'Talk to a Specialist',
          color: Color(0xFFE8F5E9),
          iconColor: Colors.green,
        ),
        ServiceCard(
          icon: Icons.local_hospital,
          title: 'Find a Health Center',
          subtitle: 'Find the Nearest Clinic',
          color: Color(0xFFE3F2FD),
          iconColor: Colors.blue,
        ),
        ServiceCard(
          icon: Icons.local_pharmacy,
          title: 'Locate a Pharmacy',
          subtitle: 'Purchase Medications',
          color: Color(0xFFFFEBEE),
          iconColor: Colors.red,
        ),
        ServiceCard(
          icon: Icons.science,
          title: 'Order a Lab Test',
          subtitle: 'Get Tested at Home',
          color: Color(0xFFFFF3E0),
          iconColor: Colors.orange,
        ),
        ServiceCard(
          icon: Icons.emergency,
          title: 'Emergency Situation',
          subtitle: 'Request an Ambulance',
          color: Color(0xFFF3E5F5),
          iconColor: Colors.deepPurple,
        ),
        ServiceCard(
          icon: Icons.question_answer,
          title: 'Health Q&A',
          subtitle: 'Speak to a Doctor',
          color: Color(0xFFE3F2FD),
          iconColor: Colors.blue,
        ),
        ServiceCard(
          icon: Icons.healing,
          title: 'Symptoms Assessments',
          subtitle: 'Speak to a Physician.',
          color: Color(0xFFFFEBEE),
          iconColor: Colors.red,
        ),
      ],
    );
  }
}