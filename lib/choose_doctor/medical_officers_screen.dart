import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';
import 'components/search_filter_section.dart';
import 'components/doctors_section.dart';
import 'components/bottom_action_button.dart';
import 'models/doctor.dart';

class MedicalOfficersScreen extends StatelessWidget {
  const MedicalOfficersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Doctor> doctorsNearby = [
      Doctor(
        name: "Dr. Alie Kamara",
        image: "/placeholder.svg",
        hospital: "Hisglory Specialist Hospitals",
        rating: 4.5,
        totalRatings: 1031,
        isOnline: true,
      ),
      Doctor(
        name: "Dr. David Sesay",
        image: "/placeholder.svg",
        hospital: "Hisglory Specialist Hospitals",
        rating: 4.5,
        totalRatings: 1031,
        isOnline: true,
      ),
      Doctor(
        name: "Dr. Andrea Bangura",
        image: "/placeholder.svg",
        hospital: "Hisglory Specialist Hospitals",
        rating: 4.5,
        totalRatings: 1031,
        isOnline: true,
      ),
    ];

    final List<Doctor> availableDoctors = [
      Doctor(
        name: "Dr. Gifty Mattia",
        image: "/placeholder.svg",
        hospital: "Havana Specialist Hospitals",
        rating: 4.5,
        totalRatings: 1031,
        isOnline: true,
      ),
      Doctor(
        name: "Dr. Haha Hoes",
        image: "/placeholder.svg",
        hospital: "Havana Specialist Hospitals",
        rating: 4.5,
        totalRatings: 1031,
        isOnline: true,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: "Medical Officers"),
            Expanded(
              child: Column(
                children: [
                  const SearchFilterSection(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DoctorsSection(
                            title: "Doctors close-by",
                            doctors: doctorsNearby,
                          ),
                          DoctorsSection(
                            title: "Available doctors",
                            doctors: availableDoctors,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const BottomActionButton(),
          ],
        ),
      ),
    );
  }
}