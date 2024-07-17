import 'package:doctorconsultant/models/chat_model.dart';
import '../../models/chat_type_model.dart';
import '../../utils/exporter.dart';

class PersonalChatPage extends StatefulWidget {
  final ChatModel chat;

  const PersonalChatPage({super.key, required this.chat});

  @override
  State<PersonalChatPage> createState() => _PersonalChatPageState();
}

class _PersonalChatPageState extends State<PersonalChatPage> {
  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.all(7),
            child: Stack(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF3FA),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(widget.chat.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 3,
                  bottom: 3,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: ShapeDecoration(
                      color: Color(0xFF00C797),
                      shape: OvalBorder(
                        side: BorderSide(width: 0, color: Color(0xFF1D6AFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: Container(margin: EdgeInsets.all(7), child: MyBackButton()),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              '${widget.chat.name}',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                color: Color(0xFF222222),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'last seen 1 hour ago',
              style: GoogleFonts.mulish(
                color: Color(0xFF9093A3),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      body: messageBuilder(),
    );
  }

  Widget messageBuilder() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Expanded(child: ChatScreen()),
            inputBuilder(),
            Visibility(
                visible: open,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: chatsTypes.map((item) {
                    return Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 16),
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEFF3FA),
                            shape: OvalBorder(),
                          ),
                          child: Icon(item.icon,color: primaryColor),
                        ),
                        Text(
                          item.title,
                          style: GoogleFonts.mulish(
                            color: Color(0xFF9093A3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    );
                  }).toList(),
                ))
          ],
        ),
      ),
    );
  }

  Widget inputBuilder() {
    return SafeArea(
      child: Container(
        width: Get.width,
        height: 54,
        decoration: BoxDecoration(),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  open = !open;
                });
              },
              child: Container(
                width: 46,
                height: 46,
                decoration: open
                    ? ShapeDecoration(
                        color: Color(0xFFEFF3FA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      )
                    : BoxDecoration(
                        color: Color(0xFF1D6AFF),
                        borderRadius: BorderRadius.circular(25),
                      ),
                child: !open
                    ? Icon(Icons.add, color: Colors.white)
                    : Icon(Icons.close, color: primaryColor),
              ),
            ),
            SizedBox(width: 11),
            Expanded(
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xFFEFF3FA),
                  borderRadius: BorderRadius.circular(37),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20), // Padding inside text input container
                    Text(
                      'Type a message',
                      style: GoogleFonts.mulish(
                        color: Color(0xFF9093A3),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(), // Space between text and send button
                    Container(
                      width: 20,
                      height: 20,
                      child: Icon(LucideIcons.send),
                    ),
                    SizedBox(width: 16), // Padding inside text input container
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
