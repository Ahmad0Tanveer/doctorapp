import 'package:doctorconsultant/screens/calls/rate_screen_page.dart';

import '../../models/doctor_model.dart';
import '../../utils/exporter.dart';

class VideoCallPage extends StatefulWidget {
  const VideoCallPage({super.key});

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
          ),
          Container(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEFF3FA),
                    image: DecorationImage(
                        image: AssetImage(doctors[2].image), fit: BoxFit.cover),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            width: Get.width,
            child: Container(
              margin: EdgeInsets.only(bottom: 50, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 68,
                    height: 68,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFF3FA),
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
                        color: Color(0xFF1D6AFF),
                        shape: OvalBorder(),
                      ),
                      child: Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  InkWell(
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
          Positioned(
              top: 80, left: 20, child: MyBackButton(bgColor: Colors.white)),
          Positioned(
            top: 80,
              right: 20,
              child: Container(
            width: 130,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(doctors[3].image),
                fit: BoxFit.cover,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
