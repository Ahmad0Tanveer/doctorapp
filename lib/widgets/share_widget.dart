import 'package:bootstrap_icons/bootstrap_icons.dart';

import '../utils/exporter.dart';

class ShareWidget extends StatefulWidget {
  const ShareWidget({super.key});
  @override
  State<ShareWidget> createState() => _ShareWidgetState();
}

class _ShareWidgetState extends State<ShareWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 390,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 35),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Share live to',
            style: GoogleFonts.mulish(
              color: Color(0xFF222222),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Choose your social media',
            style: GoogleFonts.mulish(
              color: Color(0xFF9093A3),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              shareWidgetSingle("Whatsapp","assets/social/whatsapp.png"),
              shareWidgetSingle("Facebook","assets/social/faceboot.png"),
              shareWidgetSingle("Messenger","assets/social/messanger.png"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              shareWidgetSingle("Twitter","assets/social/x.png"),
              shareWidgetSingle("Instagram","assets/social/instagram.png"),
              shareWidgetSingle("Email","assets/social/email.png"),
            ],
          ),
        ],
      ),
    );
  }
  Widget shareWidgetSingle(title,image){
    return Container(
      child: Column(
        children: [
          Image.asset(image,height: 64),
          SizedBox(height: 8),
          Text(
            'Instagram',
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(
              color: Color(0xFF222222),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
