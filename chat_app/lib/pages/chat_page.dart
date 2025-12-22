import 'package:chat_app/constants/constant.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/custom_chat_buble.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  static String id = 'chatPage';
  final controller = ScrollController();

  TextEditingController textController = TextEditingController();

  Stream<QuerySnapshot> messageStream = FirebaseFirestore.instance
      .collection(kMessagesCollections)
      .orderBy(kCreateAt, descending: true)
      .snapshots();

  CollectionReference messages = FirebaseFirestore.instance.collection(
    kMessagesCollections,
  );

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messageStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageModel> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kPrimaryColor,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(kLogo, height: 60),
                  Text(
                    'Chat',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: controller,
                    itemCount: messagesList.length,
                    itemBuilder: (context, index) {
                      if (messagesList[index].id == email) {
                        return ChatBuble(message: messagesList[index]);
                      }
                      return ChatBubleForFriend(message: messagesList[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textController,
                    onSubmitted: (data) {
                      messages.add({
                        kMessage: data,
                        kCreateAt: DateTime.now(),
                        'id': email,
                      });
                      textController.clear();
                      controller.animateTo(
                        0.0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    decoration: InputDecoration(
                      hintText: 'Send Message..',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send, color: kPrimaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          );
        } else {
          return Scaffold(body: Center(child: Text('Loading...')));
        }
      },
    );
  }
}
