import 'package:chat_screen/models/chat_model.dart';
import 'package:chat_screen/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    super.key,
    required this.chatBubble,
  });

  final ChatModel chatBubble;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      chatBubble: chatBubble,
    );
    // const UserPhoto(radius: 20),
  }
}
