import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: const AssetImage('assets/person.jpg'),
        radius: radius,
      ),
    );
  }
}
