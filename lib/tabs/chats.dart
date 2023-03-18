import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) => SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 0.1,
            ),
            ListTile(
              leading: CircleAvatar(
                // maxRadius: Checkbox.width,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chats[index].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chats[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  Text(
                    chats[index].time,
                    style: const TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                chats[index].msg,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
