import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/her_message_bubble.dart';
import 'package:flutter_application_1/presentation/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.tenor.com/2_Vs6_AB2BsAAAAC/esqueleto-bailando.gif")),
        ),
        title: const Text("HAPPY HANUKA"),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? const HerMessageBubble()
                      : const MyMassageBubble();
                }),
          ),
          const Text('ɹǝʞɔnⅎɹǝɥʇoɯ oɔnɹꓕ o ǝɔʅnᗡ'),
          const Text('>:3')
        ],
      ),
    ));
  }
}
