import 'package:flutter/material.dart';

import '../Network Images/images_link.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(2.0),
              width: 50.0,
              child: Stack(
                children: [
                  const ClipOval(
                    child: Image(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1594385614082-ac847d9cb4ef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjM2fHxzbWlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: const Text(
              "My Status",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            subtitle: const Text(
              "Tab to add Status Update",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
