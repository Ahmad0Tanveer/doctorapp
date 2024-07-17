import 'package:doctorconsultant/models/doctor_model.dart';
import 'package:doctorconsultant/screens/calls/video_call_page.dart';

import '../../utils/exporter.dart';
import 'rate_screen_page.dart';

class CallDialingPage extends StatefulWidget {
  const CallDialingPage({super.key});

  @override
  State<CallDialingPage> createState() => _CallDialingPageState();
}

class _CallDialingPageState extends State<CallDialingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
            margin: EdgeInsets.only(top: 10, left: 10), child: MyBackButton()),
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Call',
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(
              color: Color(0xFF222222),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 50),
          Container(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEFF3FA),
                    image: DecorationImage(
                        image: AssetImage(doctors[2].image), fit: BoxFit.cover),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Dr. Victor Le Roy',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF222222),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '03:20',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF00C797),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(bottom: 50, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 68,
                    height: 68,
                    decoration: ShapeDecoration(
                      color: Color(0xFF1D6AFF),
                      shape: OvalBorder(),
                    ),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => VideoCallPage()),
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEFF3FA),
                        shape: OvalBorder(),
                      ),
                      child: Icon(Icons.video_call,color: Colors.white,size: 35,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => RateScreenPage()),
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5154F),
                        shape: OvalBorder(),
                      ),
                      child: Transform.rotate(
                          angle: -225 * 3.141592653589793 / 180,
                          child: Icon(
                            Icons.phone_rounded,
                            color: Colors.white,
                            size: 35,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
