import 'package:flutter/material.dart';

class MicIcon extends StatelessWidget {
  const MicIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          margin: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
              color: const Color.fromARGB(0, 250, 250, 250),
              border:
                  Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
              borderRadius: const BorderRadius.all(Radius.circular(60))),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
            color: const Color.fromARGB(255, 44, 162, 24),
          ),
        ));
  }
}
