import 'package:chat_screen/models/chat_model.dart';
import 'package:chat_screen/models/date_formmater.dart';
import 'package:chat_screen/models/user_type.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.chatBubble});
  final ChatModel chatBubble;

  @override
  Widget build(BuildContext context) {
    // Define padding and alignment based on userType
    final EdgeInsetsGeometry padding = chatBubble.userType == UserType.sender
        ? const EdgeInsets.fromLTRB(64.0, 4.0, 16.0, 4.0)
        : const EdgeInsets.fromLTRB(16.0, 4.0, 64.0, 4.0);

    final Alignment alignment = chatBubble.userType == UserType.sender
        ? Alignment.centerRight
        : Alignment.centerLeft;

    // Define text alignment for the timestamp
    // final Alignment timestampAlignment = chatBubble.userType == UserType.sender
    //     ? Alignment.bottomRight
    //     : Alignment.bottomLeft;

    return Padding(
      padding: padding,
      child: Align(
        alignment: alignment,
        child: Column(
          crossAxisAlignment: chatBubble.userType == UserType.sender
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    0, 250, 250, 250), // Maintain original color
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                border: Border.all(
                    color: chatBubble.userType == UserType.sender
                        ? const Color.fromARGB(255, 255, 255, 255)
                        : const Color.fromARGB(255, 2, 153, 24)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                child: Text(
                  chatBubble.textMessage,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: timestampAlignment,
            // child:
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0), // Add some padding above the timestamp
              child: Text(
                Formatter.formatDateTime(chatBubble.time),
                style: const TextStyle(
                  color: Color.fromARGB(137, 190, 190, 190),
                  fontSize: 12,
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
