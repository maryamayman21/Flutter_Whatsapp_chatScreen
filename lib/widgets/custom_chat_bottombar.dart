import 'package:chat_screen/widgets/message_inputfield.dart';
import 'package:chat_screen/widgets/mic_icon.dart';
import 'package:flutter/material.dart';

class CustomChatBottomBar extends StatelessWidget {
  const CustomChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return //text field
        const SafeArea(
      bottom: true,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [MessageInputfield(), MicIcon()],
        ),
      ),
    );
  }
}
