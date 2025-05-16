import 'package:flutter/material.dart';
import 'package:netflix_ui/ui/screens/netflix_home_screen.dart';
import 'package:netflix_ui/utils/colors.dart';

class AppNavbarScreen extends StatefulWidget {
  const AppNavbarScreen({super.key});

  @override
  State<AppNavbarScreen> createState() => _AppNavbarScreenState();
}

class _AppNavbarScreenState extends State<AppNavbarScreen> {
    int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Üç sekme olduğunu varsayıyoruz
      child: Scaffold(
         bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomNavBackground,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondary,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports_outlined),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: 'New & Hot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'My Netflix',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 10),
      ),
       body: const TabBarView(
          children: [NetflixHomeScreen(), Scaffold(), Scaffold()],
        ),
      ),
    );
      
    
  }
}
