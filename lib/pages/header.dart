import 'package:flutter/material.dart';

// import 'package:gma_academy_program/main.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.lightGreen,
        child: Row(
          children: [
            const SizedBox(
              width: 160,
            ),
            Image.asset(
              'assets/images/gma_logo.png',
              width: 100,
              height: 40,
            ),
            const SizedBox(
              width: 30,
            ),
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/register');
              },
              icon: const Icon(Icons.notifications),
              color: Colors.white,
            ),
            const SizedBox(
              width: 30,
            ),
            IconButton(
              onPressed: () {
                onPressLogout(context);
              },
              icon: const Icon(Icons.power_settings_new),
              color: Colors.white,
            ),
          ],
        ));
  }
}

void onPressLogout(BuildContext context) {
  Navigator.pushNamed(context, '/login');
}
