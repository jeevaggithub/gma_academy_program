import 'package:flutter/material.dart';
import 'package:gma_academy_program/pages/footer.dart';
import 'package:gma_academy_program/pages/header.dart';
import 'package:gma_academy_program/pages/favorite.dart';
import 'package:gma_academy_program/pages/menu.dart';
import 'package:gma_academy_program/pages/search.dart';
import 'package:gma_academy_program/pages/profile.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    final List<Widget> _screens = [
      DashboardScreen(),
      FavoriteScreen(),
      MenuScreen(),
      SearchScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                // child: Column(
                //   children: [
                //     SizedBox(height: 10),
                //     // Additional content here
                //     Text(
                //       'Some content between the header and footer',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //     ),
                //     SizedBox(height: 20),
                //     Text(
                //       'More content',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //     ),
                //     SizedBox(height: 100),
                //     Text(
                //       'DASHBOARD',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //     ),
                //   ],
                // ),
                child: _screens[_currentIndex],
              ),
            ),
            // FooterWidget(),
            FooterWidget(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
