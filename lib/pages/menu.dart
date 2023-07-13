import 'package:flutter/material.dart';
import 'package:gma_academy_program/widgets/menu_section_widget.dart';

// import 'package:gma_academy_program/pages/footer.dart';
// import 'package:gma_academy_program/pages/header.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
  @override
  State<MenuScreen> createState() => _MenuScreenSate();
}

class _MenuScreenSate extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          children: [
            const MenuSectionWidget(
                imagePath:
                    'https://images.pexels.com/photos/414628/pexels-photo-414628.jpeg?auto=compress&cs=tinysrgb&w=600',
                content: "courses"),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
            const MenuSectionWidget(
                imagePath:
                    'https://images.pexels.com/photos/821948/pexels-photo-821948.jpeg?auto=compress&cs=tinysrgb&w=600',
                content: "Videos"),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
            const MenuSectionWidget(
                imagePath:
                    'https://images.pexels.com/photos/3771813/pexels-photo-3771813.jpeg?auto=compress&cs=tinysrgb&w=600',
                content: "Full Audio Library"),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
            const MenuSectionWidget(
                imagePath:
                    'https://images.pexels.com/photos/7412085/pexels-photo-7412085.jpeg?auto=compress&cs=tinysrgb&w=600',
                content: "Guides for Indie Artists"),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
