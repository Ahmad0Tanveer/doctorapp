import 'package:doctorconsultant/utils/exporter.dart';

class ChatTypeModel{
  final String title;
  final IconData icon;
  ChatTypeModel({required this.title, required this.icon});
}

List<ChatTypeModel> chatsTypes = [
  ChatTypeModel(title: "Image", icon: LucideIcons.camera),
  ChatTypeModel(title: "File", icon: LucideIcons.file),
  ChatTypeModel(title: "Location", icon: LucideIcons.locate),
  ChatTypeModel(title: "Contact", icon: LucideIcons.user),
];