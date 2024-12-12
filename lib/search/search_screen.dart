import 'package:flutter/material.dart';
import 'components/search_header.dart';
import 'components/services_grid.dart';
import 'components/bottom_nav_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchHeader(),
            Expanded(
              child: ServicesGrid(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}