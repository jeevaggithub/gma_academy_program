import 'package:flutter/material.dart';

class MenuSectionWidget extends StatefulWidget {
  final String imagePath;
  final String content;
  const MenuSectionWidget(
      {super.key, required this.imagePath, required this.content});
  @override
  State<MenuSectionWidget> createState() => _MenuSectionWidgetState();
}

class _MenuSectionWidgetState extends State<MenuSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Row(
            children: [
              Image.network(
                widget.imagePath,
                // 'assets/images/SamplePNGImage_500kbmb.png',
                width: 100,
                height: 70,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.content,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              // const SizedBox(
              //   width: 4,
              // ),
              const Spacer(),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
