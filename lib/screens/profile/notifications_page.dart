import '../../models/notification_item.dart';
import '../../utils/exporter.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(top: 10,left: 10),
            child: MyBackButton()),
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Notification',
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(
              color: Color(0xFF222222),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        width: Get.width,
        height: 812,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFDEE1E6)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: notification.backgroundColor,
                  child: Icon(
                    notification.icon,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  notification.centerName,
                  style: TextStyle(
                    color: Color(0xFF1D6AFF),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  notification.title,
                  style: TextStyle(
                    color: Color(0xFF9093A3),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
