import 'package:doctorconsultant/models/doctor_model.dart';

import '../../utils/exporter.dart';

class DoctorDetailsPage extends StatefulWidget {
  final DoctorModel doctor;

  const DoctorDetailsPage({super.key, required this.doctor});

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.transparent,
            ),
            Container(
              height: Get.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.doctor.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.35,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                width: Get.width,
                height: Get.height - Get.height * 0.35,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.doctor.name}',
                      style: GoogleFonts.mulish(
                        color: Color(0xFF222222),
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: widget.doctor.rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.zero,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color(0xFFFFD855),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          "${widget.doctor.rating}",
                          style: GoogleFonts.mulish(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: Get.width - 160,
                      child: Text(
                        widget.doctor.spacialist,
                        style: GoogleFonts.mulish(
                          color: Color(0xFF9093A3),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    subscribeConsult(),
                    SizedBox(
                      height: 20,
                    ),
                    availabilityWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    locationWidget(),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 16, left: 16, child: MyBackButton(bgColor: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget subscribeConsult() {
    return InkWell(
      onTap: () => Get.to(() => SubscriptionPage()),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/email.png",
              width: 30,
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Subcribe Consult',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Takes %25 takes and more!',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget availabilityWidget() {
    return GestureDetector(
      onTap: () => Get.to(() => AvailabilityPage()),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFDEE1E6)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/calendar.png",
              width: 30,
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Availibility',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF222222),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '08:00 AM - 05:00 PM',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF9093A3),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget locationWidget() {
    return GestureDetector(
      onTap: () => Get.to(() => DoctorLocationPage(doctor: widget.doctor)),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFDEE1E6)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/location.png",
              width: 30,
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF222222),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Miami Hospital Center',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF9093A3),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
