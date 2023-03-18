import 'package:flutter/material.dart';

import '../models/my_status_of_status.dart';
import '../models/statusmodel.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyStatus(),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            color: Colors.grey.shade200,
            width: double.infinity,
            child: const Text(
              "Recent Updates",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: status.length,
            itemBuilder: (context, i) => SingleChildScrollView(
              child: Column(
                children: [
                  const Divider(
                    height: 0.1,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      // maxRadius: Checkbox.width,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(status[i].pic),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          status[i].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      status[i].time,
                      style: const TextStyle(
                        fontSize: 11.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
