import 'package:flutter/material.dart';

import 'package:gma_academy_program/pages/dashboard.dart';
// import 'package:gma_academy_program/pages/footer.dart';
// import 'package:gma_academy_program/pages/header.dart';
import 'package:gma_academy_program/pages/favorite.dart';
import 'package:gma_academy_program/pages/header.dart';
import 'package:gma_academy_program/pages/login_form.dart';
import 'package:gma_academy_program/pages/menu.dart';
import 'package:gma_academy_program/pages/register.dart';
import 'package:gma_academy_program/pages/search.dart';
import 'package:gma_academy_program/pages/profile.dart';
import 'package:gma_academy_program/pages/start_screen.dart';

// / Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationBarExample(),
      // initialRoute: '/home',
      routes: {
        '/home': (BuildContext context) =>
            const BottomNavigationBarExampleApp(),
        '/login': (BuildContext context) => const LoginForm(),
        '/register': (BuildContext context) => const RegisterFrom(),
        '/startscreen': (BuildContext context) => const StartScreen(),
        '/dashboard': (BuildContext context) => const DashboardScreen(),
        '/favorite': (BuildContext context) => const FavoriteScreen(),
        '/menu': (BuildContext context) => const MenuScreen(),
        '/search': (BuildContext context) => const SearchScreen(),
        '/profile': (BuildContext context) => const ProfileScreen(),
      },
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    FavoriteScreen(),
    MenuScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const HeaderWidget(),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          color: Colors.lightGreen,
          child: BottomNavigationBar(
            backgroundColor: Colors.lightGreen,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(Icons.favorite),
                label: 'favorites',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(Icons.menu),
                label: 'menu',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(Icons.search),
                label: 'search',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(Icons.person),
                label: 'profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ));
  }
}
