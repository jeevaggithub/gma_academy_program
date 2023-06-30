import 'package:flutter/material.dart';
import 'package:gma_academy_program/pages/dashboard.dart';
import 'package:gma_academy_program/pages/favorite.dart';
import 'package:gma_academy_program/pages/menu.dart';
import 'package:gma_academy_program/pages/profile.dart';
import 'package:gma_academy_program/pages/search.dart';

import 'package:gma_academy_program/pages/start_screen.dart';
import 'package:gma_academy_program/pages/login_form.dart';
import 'package:gma_academy_program/pages/register.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        // backgroundColor: Colors.red,
        body: StartScreen(),
      ),
      routes: {
        '/login': (context) => const LoginForm(),
        '/register': (context) => const RegisterFrom(),
        '/startscreen': (context) => const StartScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/favorite': (context) => const FavoriteScreen(),
        '/menu': (context) => const MenuScreen(),
        '/search': (context) => const SearchScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    ),
  );
}
