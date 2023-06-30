import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {},
          icon: const Icon(Icons.notifications),
          color: Colors.white,
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.power_settings_new),
          color: Colors.white,
        ),
      ],
    );
  }
}
