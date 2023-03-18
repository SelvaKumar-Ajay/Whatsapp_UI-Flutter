import 'package:flutter/material.dart';
import 'package:whatsapp_ui/tabs/calls.dart';
import 'package:whatsapp_ui/tabs/camera.dart';
import 'package:whatsapp_ui/tabs/chats.dart';
import 'package:whatsapp_ui/tabs/status.dart';

import 'float_action_button/float_buttons.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),

        // accentColor: const Color(0xff25d366),
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title: const Text("Whatsapp"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.search, color: Colors.white),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
          ),
        ],
        bottom: TabBar(controller: tabController, tabs: const <Widget>[
          Tab(icon: Icon(Icons.camera_alt_rounded)),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(text: "CALLS"),
        ]),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: tabController.index == 0
          ? const FloatButton(icons: Icons.camera_alt_rounded)
          : tabController.index == 1
              ? const FloatButton(icons: Icons.chat_rounded)
              : tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: FloatButton(
                              icons: Icons.edit,
                              backgroundColor: Colors.black,
                              iconColor: Colors.white,
                            )),
                        SizedBox(height: 8.0),
                        FloatButton(icons: Icons.camera_alt_rounded),
                      ],
                    )
                  : const FloatButton(icons: Icons.add_ic_call_rounded),
    );
  }
}
