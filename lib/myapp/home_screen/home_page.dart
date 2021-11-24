import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proiect_dac/myapp/home_screen/pages/home_page.dart';
import 'package:proiect_dac/myapp/home_screen/pages/messages_page.dart';
import 'package:proiect_dac/myapp/home_screen/pages/settings_page.dart';
import 'package:proiect_dac/myapp/home_screen/pages/users_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBody() => const Center(
        child: Text(
          'Animated Bottom Navigation',
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        ),
      );

  Widget buildBottomNavigationBar() {
    final inactiveColor = Colors.grey;
    final activeColor = Colors.white;
    return BottomNavyBar(
      backgroundColor: Colors.black,
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.apps),
          title: const Text('Home'),
          textAlign: TextAlign.center,
          inactiveColor: inactiveColor,
          activeColor: activeColor,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.people),
          title: const Text('Users'),
          textAlign: TextAlign.center,
          inactiveColor: inactiveColor,
          activeColor: activeColor,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.message),
          title: const Text('Messages'),
          textAlign: TextAlign.center,
          inactiveColor: inactiveColor,
          activeColor: activeColor,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
          textAlign: TextAlign.center,
          inactiveColor: inactiveColor,
          activeColor: activeColor,
        ),
      ],
    );
  }

  buildPages() {
    switch (index) {
      case 0:
        return const MyHomePage();
      case 1:
        return const UsersPage();
      case 2:
        return const MessagesPage();
      case 3:
        return const SettingsPage();
      default:
        return const MyHomePage();
    }
  }
}
