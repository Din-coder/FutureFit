import 'package:flutter/material.dart';
import 'package:futurefit/screens/AfterLogin/widgets/doctor.dart';
import 'package:futurefit/screens/AfterLogin/widgets/home/home.dart';
import 'package:futurefit/screens/AfterLogin/widgets/notifications.dart';
import 'package:futurefit/screens/AfterLogin/widgets/profile/profile.dart';
import 'package:futurefit/screens/AfterLogin/widgets/settings.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current_Index = 0;

  List<Widget> bottom_screens = [
    Home(),
    Profile(),
    NotificationScreen(),
    Doctor(),
    Settings()
  ];

  List<String> screen_names = [
    'FutureFit',
    'Profile',
    'Alerts',
    'Doctor',
    'Settings'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
          child: Row(
            children: [
              Text(
                screen_names[current_Index],
                style: const TextStyle(
                  color: Color.fromARGB(255, 13, 177, 173),
                  fontSize: 28,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ), // Dynamic title based on the selected screen
      ),
      body: bottom_screens[current_Index],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: current_Index,
        onTap: (int index) {
          setState(() {
            current_Index = index;
          });
        },
        selectedItemColor: Color.fromARGB(199, 13, 177, 174),
        unselectedItemColor: Color.fromARGB(199, 158, 158, 158),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35,),
            activeIcon: Icon(Icons.home_outlined, size: 35,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 35,),
            activeIcon: Icon(Icons.account_circle_outlined, size: 35,),
            
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 35,),
            activeIcon: Icon(Icons.notifications_outlined, size: 35,),
            label: 'Alerts'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 35,),
            activeIcon: Icon(Icons.add_outlined, size: 35,),
            label: 'Doctor'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 35,),
            activeIcon: Icon(Icons.settings_outlined, size: 35,),
            label: 'Settings'
          )
        ],
      ),
    );
  }
}