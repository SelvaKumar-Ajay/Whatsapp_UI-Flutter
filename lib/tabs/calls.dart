import 'package:flutter/material.dart';

import '../models/call_model.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
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
                backgroundImage: NetworkImage(calls[index].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    calls[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  Icon(calls[index].iconImage,
                      color: Theme.of(context).primaryColor),
                ],
              ),
              subtitle: Text(
                calls[index].time,
                style: const TextStyle(
                  fontSize: 11.0,
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
