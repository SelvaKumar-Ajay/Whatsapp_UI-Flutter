import '../Network Images/images_link.dart';

class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name, this.msg, this.time, this.pic);
}

List<ChatModel> chats = [
  ChatModel(
      "Ajay",
      "Bookmark them, screen shot them, and use them to fuel your own journey.",
      "10.00 PM",
      men1),
  ChatModel("Nivitha", "Okay", "11.00 PM", women1),
  ChatModel(
      "Raji", "How many episodes did you watch in Naruto?", "15.15 AM", women2),
  ChatModel("Ramya", "see you again", "10.45 PM", women3),
  ChatModel("Yamini", "Sorry", "07.00 AM", women4),
  ChatModel("Priya", "Make today count. Focus on what you can do right now",
      "05.50 PM", women5),
  ChatModel("Vijay", "You might unfortunately angel investor yourself",
      "!0.17 AM", men2),
  ChatModel(
      "Ganga",
      " learning, studying, sacrifice and most of all, love of what you are doing",
      "08.59 PM",
      women6),
  ChatModel("Jessi", "I have the list of the most successful entrepreneurs.",
      "09.09 PM", women7),
  ChatModel("Ravi", "Don’t worry so much about how long you’ve been doing it",
      "01.09 AM", men3),
  ChatModel("Priya", "Make today count. Focus on what you can do right now",
      "05.50 PM", women8),
  ChatModel("Yamini", "Sorry", "07.00 AM", women11),
  ChatModel("Vijay", "You might unfortunately angel investor yourself",
      "!0.17 AM", men4),
  ChatModel("Nivitha", "Okay", "11.00 PM", women9),
  ChatModel("Raji", "How many episodes did you watch in Naruto?", "15.15 AM",
      women10),
];
