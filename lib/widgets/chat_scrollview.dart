import 'package:chat_screen/models/chat_controller.dart';
import 'package:chat_screen/widgets/user_bubble_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScrollview extends StatelessWidget {
  const ChatScrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Unfocus the current focus node when tapping outside
          context.read<ChatController>().focusNode.unfocus();
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: Consumer<ChatController>(
            builder: (context, chatController, child) {
              final chatList = chatController.chatList.reversed.toList();
              // ListView.builder with reverse order
              return ListView.builder(
                controller: chatController.scrollController,
                reverse: true, // Display most recent messages at the bottom
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return UserMessage(chatBubble: chatList[index]);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
