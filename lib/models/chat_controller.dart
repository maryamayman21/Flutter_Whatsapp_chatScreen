import 'package:chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatController extends ChangeNotifier {
  /* Variables */
  List<ChatModel> chatList = ChatModel.generateChatMessages();

  /* Controllers */
  late final ScrollController scrollController = ScrollController();
  late final TextEditingController textEditingController =
      TextEditingController();

  //to control keyboard action
  //manage action when textfield is focused
  late final FocusNode focusNode = FocusNode();

  /* Intents */
  Future<void> onFieldSubmitted() async {
    if (!isTextFieldEnable) return;

    // ... operator to concatenate lists
    chatList = [
      ...chatList,
      ChatModel.sender(textMessage: textEditingController.text),
    ];

    //listen to the scroll position, jump to a specific position, and animate the scroll.
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    textEditingController.text = '';
    notifyListeners();
  }

  void onFieldChanged(String term) {
    notifyListeners();
  }

  /* Getters */
  bool get isTextFieldEnable => textEditingController.text.isNotEmpty;
}
