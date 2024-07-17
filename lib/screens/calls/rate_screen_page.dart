import 'package:doctorconsultant/models/doctor_model.dart';

import '../../models/chat_model.dart';
import '../../utils/exporter.dart';
import '../../widgets/rating_submit_dialog.dart';
import '../chat/personal_chat_page.dart';

class RateScreenPage extends StatefulWidget {
  const RateScreenPage({super.key});

  @override
  State<RateScreenPage> createState() => _RateScreenPageState();
}

class _RateScreenPageState extends State<RateScreenPage> {
  final List<EmojiModel> notifications = [
    EmojiModel(
      emoji: '😀',
      text: 'Not Bad',
      textColor: Color(0xFF9093A3),
    ),
    EmojiModel(
      emoji: '🥰',
      text: 'Love i',
      textColor: Color(0xFF9093A3),
    ),
    EmojiModel(
      emoji: '🤨',
      text: 'Nice Work',
      textColor: Color(0xFF222222),
    ),
    EmojiModel(
      emoji: '🤒',
      text: 'Not Bad',
      textColor: Color(0xFF9093A3),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: MyBackButton(bgColor: Colors.white)),
        title: Text(
          'Doctor Rate',
          textAlign: TextAlign.center,
          style: GoogleFonts.mulish(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: primaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.transparent,
          ),
          Positioned(
            top: Get.height * 0.1,
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
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Text(
                    'Dr. Victor Le Roy',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 20,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 20),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 35,
                    itemPadding: EdgeInsets.all(10),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Color(0xFFFFD855),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    '“Awesome consultation, Doc”',
                    style: GoogleFonts.mulish(
                      color: Color(0xFF222222),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: notifications.map((it) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: OvalBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFDEE1E6)),
                                ),
                              ),
                              child: Text(
                                it.emoji,
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              it.text,
                              style: GoogleFonts.mulish(
                                color: Color(0xFF222222),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.dialog(Dialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: RatingSubmitDialog()));
                    },
                    child: Container(
                      width: 208,
                      height: 62,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0xFF1D6AFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Positioned(
              top: Get.height * 0.1 - 125 / 2,
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(doctors[2].image),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class EmojiModel {
  final String emoji;
  final String text;
  final Color textColor;

  EmojiModel({
    required this.emoji,
    required this.text,
    required this.textColor,
  });
}
