import 'package:flutter/material.dart';
import 'components/profile_header.dart';
import 'components/profile_section.dart';
import 'components/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileSection(
                      title: 'Account',
                      children: [
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage('/placeholder.svg'),
                          ),
                          title: 'Gifty Mattia',
                          subtitle: 'Female, 21 years old.',
                          trailing: Icon(Icons.edit),
                        ),
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFFFEBEB),
                            child: Icon(Icons.favorite, color: Colors.red),
                          ),
                          title: 'MediCare',
                          subtitle: 'Basic Account',
                        ),
                      ],
                    ),
                    const ProfileSection(
                      title: 'Payment',
                      children: [
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFE3F2FD),
                            child: Icon(Icons.credit_card, color: Colors.blue),
                          ),
                          title: 'Payment method on file',
                          subtitle: 'Mobile Money ****8976',
                        ),
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFE8F5E9),
                            child: Icon(Icons.receipt_long, color: Colors.green),
                          ),
                          title: 'Transactios',
                          subtitle: 'View',
                          subtitleColor: Color(0xFF0052FF),
                        ),
                      ],
                    ),
                    const ProfileSection(
                      title: 'Settings',
                      children: [
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFEEEEEE),
                            child: Icon(Icons.settings, color: Colors.grey),
                          ),
                          title: 'Settings',
                          subtitle: 'Configure tyour account your way',
                        ),
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFF3E5F5),
                            child: Icon(Icons.help_outline, color: Colors.purple),
                          ),
                          title: 'Help & Support',
                          subtitle: '24/7 customer support',
                        ),
                        ProfileTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFFFEBEE),
                            child: Icon(Icons.logout, color: Colors.red),
                          ),
                          title: 'Log Out',
                          subtitle: 'Securely Logout of the site.',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const CustomBottomNavBar(selectedIndex: 4),
          ],
        ),
      ),
    );
  }
}