import 'package:flutter/material.dart';

class FooterIcon extends StatefulWidget {
  final IconData iconName;
  final String textName;
  final String path;
  final bool isSelected;
  final VoidCallback onTap;

  const FooterIcon({
    super.key,
    required this.iconName,
    required this.textName,
    required this.path,
    required this.isSelected,
    required this.onTap,
  });
  @override
  State<FooterIcon> createState() => _FooterIconState();
}

class _FooterIconState extends State<FooterIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              // print("/${widget.path}");
              if (widget.path != '') {
                Navigator.pushNamed(context, "/${widget.path}");
              }
            },
            icon: Icon(widget.iconName),
            color: Colors.white,
          ),
          Text(
            widget.textName,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
