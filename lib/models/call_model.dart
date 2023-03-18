import 'package:flutter/material.dart';

import '../Network Images/images_link.dart';

class CallModel {
  final String name;
  final String time;
  final String pic;
  final IconData iconImage;

  CallModel(this.name, this.time, this.pic, this.iconImage);
}

List<CallModel> calls = [
  CallModel("Jessi", "09.09 PM", women7, Icons.call_rounded),
  CallModel("Ravi", "01.09 AM", men3, Icons.videocam_rounded),
  CallModel("Priya", "05.50 PM", women5, Icons.call_rounded),
  CallModel("Nivitha", "11.00 PM", women9, Icons.call_rounded),
  CallModel("Ajay", "10.00 PM", men1, Icons.call_rounded),
  CallModel("Nivitha", "11.00 PM", women9, Icons.videocam_rounded),
  CallModel("Raji", "15.15 AM", women2, Icons.call_rounded),
  CallModel("Ramya", "10.45 PM", women3, Icons.videocam_rounded),
  CallModel("Yamini", "07.00 AM", women4, Icons.videocam_rounded),
  CallModel("Vijay", "!0.17 AM", men2, Icons.call_rounded),
  CallModel("Ganga", "08.59 PM", women6, Icons.call_rounded),
  CallModel("Raji", "15.15 AM", women10, Icons.videocam_rounded),
  CallModel("Ramya", "10.45 PM", women3, Icons.call_rounded),
  CallModel("Yamini", "07.00 AM", women4, Icons.videocam_rounded),
  CallModel("Vijay", "!0.17 AM", men2, Icons.call_rounded),
];
