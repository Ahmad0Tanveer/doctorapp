import 'dart:math';

import 'doctor_model.dart';

class ChatModel{
  final String image;
  final String name;
  final String lastMessage;
  final String lastMessageTime;
  final int unreadMessages;
  ChatModel({required this.image, required this.name, required this.lastMessage, required this.lastMessageTime, required this.unreadMessages});
}

List<ChatModel> chats = doctors.map((doctor) {
  return ChatModel(
    image: doctor.image,
    name: doctor.name,
    lastMessage: "Hi there! How can I help you today?",
    lastMessageTime: "10:00 AM",
    unreadMessages: Random().nextInt(5)+1,
  );
}).toList();