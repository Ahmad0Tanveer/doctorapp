import 'package:doctorconsultant/utils/exporter.dart';
import 'package:lucide_icons/lucide_icons.dart';

class BootbarModel {
  final String title;
  final String imagePath;
  final IconData iconData;
  final Widget page;

  BootbarModel(
      {required this.title,
      this.imagePath = "",
      required this.iconData,
      required this.page});
}

List<BootbarModel> bars = [
  BootbarModel(
      title: "Chat",
      iconData: LucideIcons.messageCircle,
      page: const ChatPage()),
  BootbarModel(
      title: "Home", iconData: LucideIcons.home, page: const HomePage()),
  BootbarModel(
      title: "Milan",
      imagePath: "assets/doctors/1703331158.jpg",
      iconData: LucideIcons.messageCircle,
      page: const ProfilePage()),
];
