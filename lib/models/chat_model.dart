import 'package:chat_screen/models/user_type.dart';

class ChatModel {
  final String textMessage;
  final UserType userType;
  final DateTime time;

  ChatModel(
      {required this.textMessage, required this.userType, required this.time});

  //list of chats

  factory ChatModel.sender({required textMessage}) => ChatModel(
      textMessage: textMessage,
      userType: UserType.sender,
      time: DateTime.now().subtract(const Duration(minutes: 15)));

  static List<ChatModel> generateChatMessages() {
    return [
      ChatModel(
          textMessage: "Hello!",
          userType: UserType.sender,
          time: DateTime.now().subtract(const Duration(minutes: 15))),
      ChatModel(
        textMessage: "Nice to meet you",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 15)),
      ),
      ChatModel(
        textMessage: "The weather is nice today.",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 13)),
      ),
      ChatModel(
        textMessage: "Yes, it's a great day to go out.",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 12)),
      ),
      ChatModel(
        textMessage: "Have a nice day!",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 11)),
      ),
      ChatModel(
        textMessage: "What are your plans for the weekend?",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 10)),
      ),
      ChatModel(
        textMessage: "I'm planning to go to the beach.",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 9)),
      ),
      ChatModel(
        textMessage: "That sounds fun!",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 8)),
      ),
      ChatModel(
        textMessage: "Do you want to come with me?",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 7)),
      ),
      ChatModel(
        textMessage: "Sure, I'd love to!",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 6)),
      ),
      ChatModel(
        textMessage: "What time should we meet?",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      ChatModel(
        textMessage: "Let's meet at 10am.",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 4)),
      ),
      ChatModel(
        textMessage: "Sounds good to me!",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 3)),
      ),
      ChatModel(
        textMessage: "See you then!",
        userType: UserType.sender,
        time: DateTime.now().subtract(const Duration(minutes: 2)),
      ),
      ChatModel(
        textMessage: "Bye!",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 1)),
      ),
      ChatModel(
        textMessage: "How was your weekend?",
        userType: UserType.receiver,
        time: DateTime.now().subtract(const Duration(minutes: 1)),
      ),
      ChatModel(
        textMessage: "It was great! The beach was awesome.",
        userType: UserType.sender,
        time: DateTime.now(),
      ),
      ChatModel(
        textMessage: "I'm glad to hear that!",
        userType: UserType.receiver,
        time: DateTime.now(),
      ),
      ChatModel(
        textMessage: "We should do that again sometime.",
        userType: UserType.sender,
        time: DateTime.now(),
      ),
      ChatModel(
        textMessage: "Definitely!",
        userType: UserType.receiver,
        time: DateTime.now(),
      ),
    ];
  }
}
