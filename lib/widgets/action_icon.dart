import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
