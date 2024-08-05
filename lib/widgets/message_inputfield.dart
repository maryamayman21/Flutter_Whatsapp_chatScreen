import 'package:chat_screen/models/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MessageInputfield extends StatelessWidget {
  const MessageInputfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: TextFormField(
        controller: context.read<ChatController>().textEditingController,
        focusNode: context.read<ChatController>().focusNode,
        onChanged: context.read<ChatController>().onFieldChanged, //notifier
        textAlignVertical: TextAlignVertical.top, //observe
        style: const TextStyle(color: Colors.white, fontSize: 16),
        decoration: InputDecoration(
          hintText: 'Type a message',
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          prefixIcon: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.tag_faces_outlined)),
          suffixIcon: IconButton(
              color: Colors.white,
              onPressed: () {
                context.read<ChatController>().onFieldSubmitted();
              },
              icon: const Icon(Icons.send)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(90), right: Radius.circular(90)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(90), right: Radius.circular(90)),
          ),
        ),
      ),
    );
  }
}
