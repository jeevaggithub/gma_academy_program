import 'package:flutter/material.dart';
import 'package:gma_academy_program/pages/dashboard.dart';
import 'package:gma_academy_program/pages/favorite.dart';
import 'package:gma_academy_program/pages/home.dart';
import 'package:gma_academy_program/pages/menu.dart';
import 'package:gma_academy_program/pages/profile.dart';
import 'package:gma_academy_program/pages/search.dart';

import 'package:gma_academy_program/pages/start_screen.dart';
import 'package:gma_academy_program/pages/login_form.dart';
import 'package:gma_academy_program/pages/register.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // onUnknownRoute: (settings) {
      //   // Handle unknown route here
      //   // You can navigate to a specific page or show an error widget
      //   return MaterialPageRoute(
      //       builder: (context) => const BottomNavigationBarExampleApp());
      // },
      home: const Scaffold(
        // backgroundColor: Colors.red,
        body: StartScreen(),
      ),
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
    ),
  );
}
