import 'package:flutter/material.dart';
import 'doctor_card.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Doctor',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Icon(Icons.chevron_right, color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                DoctorCard(
                  image: 'assets/doctor1.jpg',
                  name: "Dr. Mi'keila Dione",
                  specialty: 'Medicine Specialist',
                  rating: 4,
                ),
                SizedBox(width: 16),
                DoctorCard(
                  image: 'assets/doctor2.jpg',
                  name: 'Dr. Blessing',
                  specialty: 'Dentist Specialist',
                  rating: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}