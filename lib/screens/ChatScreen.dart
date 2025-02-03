import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat_app/widgets/chat_messages.dart';
import 'package:firebase_chat_app/widgets/new_messages.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat'),
          actions: [
            IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: Column(
          children: [Expanded(child: ChatMessages()), NewMessages()],
        ));
  }
}
