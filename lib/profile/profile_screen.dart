import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'components/profile_tile.dart' as tile;
import 'components/profile_section.dart' as section;
import 'components/profile_header.dart';
import 'components/bottom_nav_bar.dart'; // Updated import
import '../patient_details/patient_details_screen.dart'; // Import the PatientDetailScreen

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50], // Background color of the screen
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    section.ProfileSection(
                      title: 'Account',
                      children: [
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage('/placeholder.svg'),
                          ),
                          title: 'Gifty Mattia',
                          subtitle: 'Female, 21 years old.',
                          trailing: const Icon(Icons.edit),
                          onTap: () {
                            if (kDebugMode) {
                              print("Edit Profile tapped");
                            }
                            // Navigate to the PatientDetailScreen when tapping on Gifty Mattia
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PatientDetailsScreen(),
                              ),
                            );
                          },
                        ),
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFFFEBEB),
                            child: Icon(Icons.favorite, color: Colors.red),
                          ),
                          title: 'MediCare',
                          subtitle: 'Basic Account',
                          onTap: () {
                            if (kDebugMode) {
                              print("MediCare tapped");
                            }
                          },
                        ),
                      ],
                    ),
                    section.ProfileSection(
                      title: 'Payment',
                      children: [
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFE3F2FD),
                            child: Icon(Icons.credit_card, color: Colors.blue),
                          ),
                          title: 'Payment method on file',
                          subtitle: 'Mobile Money ****8976',
                          onTap: () {
                            if (kDebugMode) {
                              print("Payment method tapped");
                            }
                          },
                        ),
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFE8F5E9),
                            child: Icon(Icons.receipt_long, color: Colors.green),
                          ),
                          title: 'Transactions',
                          subtitle: 'View',
                          subtitleColor: const Color(0xFF0052FF),
                          onTap: () {
                            if (kDebugMode) {
                              print("Transactions tapped");
                            }
                          },
                        ),
                      ],
                    ),
                    section.ProfileSection(
                      title: 'Settings',
                      children: [
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFEEEEEE),
                            child: Icon(Icons.settings, color: Colors.grey),
                          ),
                          title: 'Settings',
                          subtitle: 'Configure your account your way',
                          onTap: () {
                            if (kDebugMode) {
                              print("Settings tapped");
                            }
                          },
                        ),
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFF3E5F5),
                            child: Icon(Icons.help_outline, color: Colors.purple),
                          ),
                          title: 'Help & Support',
                          subtitle: '24/7 customer support',
                          onTap: () {
                            if (kDebugMode) {
                              print("Help & Support tapped");
                            }
                          },
                        ),
                        tile.ProfileTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFFFEBEE),
                            child: Icon(Icons.logout, color: Colors.red),
                          ),
                          title: 'Log Out',
                          subtitle: 'Securely Logout of the site.',
                          onTap: () {
                            if (kDebugMode) {
                              print("Log Out tapped");
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(selectedIndex: 4,), // No selectedIndex needed
    );
  }
}
