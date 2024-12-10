import 'package:flutter/material.dart';
import '../models/doctor.dart';
import 'doctor_card.dart';

class DoctorsSection extends StatelessWidget {
  final String title;
  final List<Doctor> doctors;

  const DoctorsSection({
    super.key,
    required this.title,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: doctors.length,
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey.shade200,
            height: 1,
          ),
          itemBuilder: (context, index) {
            return DoctorCard(doctor: doctors[index]);
          },
        ),
      ],
    );
  }
}