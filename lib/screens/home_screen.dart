import 'package:chat_screen/widgets/action_icon.dart';
import 'package:chat_screen/widgets/chat_scrollview.dart';
import 'package:chat_screen/widgets/custom_chat_bottombar.dart';
import 'package:chat_screen/widgets/user_photo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/whatsApp_background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            // bottomNavigationBar: const CustomChatBottomBar(),
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: const UserPhoto(
                radius: 10,
              ),
              title: const Text(
                'Person',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              actions: const [
                ActionIcon(icon: Icons.videocam_outlined),
                ActionIcon(icon: Icons.phone_outlined),
                ActionIcon(icon: Icons.more_vert),
              ],
              elevation: 4,
              backgroundColor: const Color.fromARGB(42, 87, 86, 86),
            ),
            body: const Column(
              children: [
                ChatScrollview(),
                CustomChatBottomBar(),
              ],
            )));
  }
}
