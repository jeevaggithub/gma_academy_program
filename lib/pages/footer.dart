import 'package:flutter/material.dart';

import 'package:gma_academy_program/widgets/footer_icon.dart';

class FooterWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const FooterWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              FooterIcon(
                iconName: Icons.home,
                textName: 'Home',
                path: 'dashboard',
                isSelected: currentIndex == 0,
                onTap: () => onTap(0),
              ),
              const SizedBox(
                width: 15,
              ),
              FooterIcon(
                iconName: Icons.favorite,
                textName: 'Favorites',
                path: 'favorite',
                isSelected: currentIndex == 1,
                onTap: () => onTap(1),
              ),
              const SizedBox(
                width: 15,
              ),
              FooterIcon(
                iconName: Icons.menu,
                textName: 'Menu',
                path: 'menu',
                isSelected: currentIndex == 2,
                onTap: () => onTap(2),
              ),
              const SizedBox(
                width: 15,
              ),
              FooterIcon(
                iconName: Icons.search,
                textName: 'Search',
                path: 'search',
                isSelected: currentIndex == 3,
                onTap: () => onTap(3),
              ),
              const SizedBox(
                width: 15,
              ),
              FooterIcon(
                iconName: Icons.person,
                textName: 'Profile',
                path: 'profile',
                isSelected: currentIndex == 4,
                onTap: () => onTap(4),
              ),
            ],
          ),
        ));
  }
}
