import 'package:flutter/material.dart';
import 'components/search_bar.dart';
import 'components/popular_doctors.dart';
import 'components/frequently_used_caders.dart';
import 'components/caders_list.dart';

class DoctorDirectoryScreen extends StatelessWidget {
  const DoctorDirectoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CustomSearchBar(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    PopularDoctors(),
                    SizedBox(height: 24),
                    FrequentlyUsedCaders(),
                    SizedBox(height: 24),
                    CadersList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}