import '../utils/exporter.dart';

class NotificationItem {
  final String title;
  final String centerName;
  final IconData icon;
  final Color backgroundColor;

  NotificationItem({
    required this.title,
    required this.centerName,
    required this.icon,
    required this.backgroundColor,
  });
}

List<NotificationItem> notifications = [
  NotificationItem(
    title: 'send you a notes\nfor daily health',
    centerName: 'Dr. Melvin',
    icon: Icons.health_and_safety,
    backgroundColor: Colors.blue,
  ),
  NotificationItem(
    title: 'accept your book. please check your calendar',
    centerName: 'Dr. Melvin',
    icon: Icons.book,
    backgroundColor: Colors.yellow,
  ),
  NotificationItem(
    title: 'accept your book. please check your calendar',
    centerName: 'Dr. Rebeca',
    icon: Icons.book,
    backgroundColor: Colors.yellow,
  ),
  NotificationItem(
    title: 'Your top up balance \$1000 have been success.',
    centerName: '',
    icon: Icons.attach_money,
    backgroundColor: Colors.green,
  ),
];
