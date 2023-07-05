import 'package:flutter/material.dart';

// import 'package:gma_academy_program/pages/header.dart';
// import 'package:gma_academy_program/pages/footer.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenSate();
}

class _FavoriteScreenSate extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "you haven't book marked anything yet",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
