import '../models/chatmessage.dart';
import '../utils/exporter.dart';

class ChatScreen extends StatelessWidget {

  final TextStyle headerTextStyle = GoogleFonts.mulish(
    color: Color(0xFF222222),
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  final TextStyle regularTextStyle = GoogleFonts.mulish(
    color: greyColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  final TextStyle smallTextStyle = GoogleFonts.mulish(
    color: greyColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  final TextStyle whiteTextStyle = GoogleFonts.mulish(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return buildChatBubble(message);
        },
      ),
    );
  }


  Widget buildChatBubble(ChatMessage message) {
    if (message.isImage) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Align(
          alignment: message.isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 106,
            height: 146,
            decoration: BoxDecoration(
              color: lightBlueColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(message.imageUrl!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Align(
          alignment: message.isSender ? Alignment.centerRight : Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: message.isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: message.isSender ? darkBlueColor : lightBlueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                    bottomLeft: message.isSender ? Radius.circular(borderRadius) : Radius.circular(0),
                    bottomRight: message.isSender ? Radius.circular(0) : Radius.circular(borderRadius),
                  ),
                ),
                child: Text(
                  message.message,
                  style: message.isSender ? whiteTextStyle : regularTextStyle,
                ),
              ),
              SizedBox(height: 5),
              Text(
                message.time,
                style: smallTextStyle,
              ),
            ],
          ),
        ),
      );
    }
  }
}