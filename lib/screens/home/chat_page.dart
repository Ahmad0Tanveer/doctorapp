import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:doctorconsultant/models/chat_model.dart';
import 'package:doctorconsultant/models/doctor_model.dart';

import '../../utils/exporter.dart';
import '../chat/personal_chat_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.transparent,
            ),
            Container(
              padding: EdgeInsets.all(30),
              height: Get.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chat with\nyour doctor',
                    style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 48,
                          margin: EdgeInsets.only(left: 8, right: 8),
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Color.fromRGBO(162, 192, 252, 1),
                            shape: OvalBorder(),
                          ),
                          child:
                              Icon(BootstrapIcons.search, color: Colors.white),
                        ),
                        Wrap(
                          children: doctors.map((item) {
                            return Container(
                              width: 48,
                              height: 48,
                              margin: EdgeInsets.only(left: 8, right: 8),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 48,
                                    height: 48,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFEFF3FA),
                                      shape: OvalBorder(),
                                      image: DecorationImage(
                                        image: AssetImage(item.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF00C797),
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF1D6AFF)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: Get.height * 0.25,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                width: Get.width,
                height: Get.height - Get.height * 0.25,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Colors.white, Colors.white],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chats.length + 1,
                  itemBuilder: (context, index) {
                    if (chats.length == index) {
                      return Container(
                        height: 200,
                        width: Get.width,
                        color: Colors.transparent,
                      );
                    }
                    return doctorWidget(chats[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget doctorWidget(ChatModel chat) {
    return GestureDetector(
      onTap: () => Get.to(() => PersonalChatPage(chat: chat)),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEFF3FA),
                    shape: OvalBorder(),
                    image: DecorationImage(
                      image: AssetImage(chat.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: Color(0xFF1D6AFF),
                      shape: OvalBorder(),
                    ),
                    child: Text(
                      chat.unreadMessages.toString(),
                      style: GoogleFonts.mulish(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width - 60 - 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat.name,
                        style: GoogleFonts.mulish(
                          color: Color(0xFF9093A3),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${chat.lastMessageTime}',
                        style: GoogleFonts.mulish(
                          color: Color(0xFF9093A3),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Cool. You’ll better soon',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF222222),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
