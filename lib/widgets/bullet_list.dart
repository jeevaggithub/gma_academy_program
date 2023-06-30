import 'package:flutter/material.dart';

class BulletPointList extends StatelessWidget {
  final List<String> data;

  const BulletPointList({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.circle, size: 8),
          title: Text(data[index]),
        );
      },
    );
  }
}
