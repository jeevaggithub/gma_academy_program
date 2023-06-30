import 'package:flutter/material.dart';

import 'package:gma_academy_program/pages/header.dart';
import 'package:gma_academy_program/pages/footer.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenSate();
}

class _FavoriteScreenSate extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            HeaderWidget(),
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
                      'DASHBOARD',
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
