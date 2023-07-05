import 'package:flutter/material.dart';

import 'package:gma_academy_program/pages/footer.dart';
import 'package:gma_academy_program/pages/header.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
  @override
  State<MenuScreen> createState() => _MenuScreenSate();
}

class _MenuScreenSate extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            // HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    // Additional content here
                    Text(
                      'Some content between the header and footer',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'More content',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 100),
                    Text(
                      'MENU',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // FooterWidget(),
          ],
        ),
      ),
    );
  }
}
