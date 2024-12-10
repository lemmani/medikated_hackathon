import 'package:flutter/material.dart';
import 'components/header_section.dart';
import 'components/appointments_section.dart';
import 'components/general_needs_section.dart';
import 'components/specific_needs_section.dart';
import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    HeaderSection(userName: "Gifty"),
                    AppointmentsSection(),
                    GeneralNeedsSection(),
                    SpecificNeedsSection(),
                  ],
                ),
              ),
            ),
            const CustomBottomNavBar(),
          ],
        ),
      ),
    );
  }
}