import 'package:doctorconsultant/models/doctor_model.dart';
import 'package:doctorconsultant/widgets/share_widget.dart';

import '../../utils/exporter.dart';
import '../calls/call_dialing_page.dart';

class DoctorLocationPage extends StatefulWidget {
  final DoctorModel doctor;

  const DoctorLocationPage({super.key, required this.doctor});

  @override
  State<DoctorLocationPage> createState() => _DoctorLocationPageState();
}

class _DoctorLocationPageState extends State<DoctorLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.transparent,
            child: Image.asset(
              "assets/map.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 76, left: 16, child: MyBackButton(bgColor: Colors.white)),
          Positioned(
              bottom: 20,
              child: Container(
                width: Get.width,
                height: 20 + 16 + 215 + 46,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 315,
                      padding: EdgeInsets.all(20),
                      height: 215,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3DD7D7D7),
                            blurRadius: 20,
                            offset: Offset(0, 14),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFEFF3FA),
                                  image: DecorationImage(
                                      image: AssetImage(widget.doctor.image),
                                      fit: BoxFit.cover),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: (){
                                  Get.to(() => CallDialingPage());
                                },
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF00C797),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Icon(Icons.phone,
                                      color: Colors.white, size: 18),
                                ),
                              ),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: onShareButtonPress,
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF1D6AFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Icon(Icons.share,
                                      color: Colors.white, size: 18),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 38,
                                height: 38,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFD855),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: Icon(
                                  Icons.message,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                widget.doctor.name,
                                style: GoogleFonts.mulish(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
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
                          Text(
                            'Specialist in bone and skin health. Love\nsharing and work at Miami Hospital',
                            style: GoogleFonts.mulish(
                              color: Color(0xFF9093A3),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3DD7D7D7),
                            blurRadius: 20,
                            offset: Offset(0, 14),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Icon(Icons.clear),
                    )
                  ],
                ),
              ))
        
        ],
      ),
    );
  }

  void onShareButtonPress() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShareWidget();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
    );
  }
}
