import 'package:flutter/material.dart';
import '../../search/search_screen.dart'; // Import the SearchScreen
import '../../calender_main/calendar_screen.dart';
import '../../messages/messages_screen.dart';
import '../../profile/profile_screen.dart';
import '../../home/home_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0052FF),
        unselectedItemColor: Colors.grey,
        currentIndex: 4,
        onTap: (index) {
          // Handle navigation based on the tapped index
          switch (index) {
            case 0: // Search icon is at index 1
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            case 1: // Search icon is at index 1
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
              case 2: // Search icon is at index 1
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CalendarScreen(),
                ),
              );
              case 3: // Search icon is at index 1
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  MessagesScreen(),
                ),
              );
               case 4: // Search icon is at index 1
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
              break;
            // You can add more cases for other navigation items if needed
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}