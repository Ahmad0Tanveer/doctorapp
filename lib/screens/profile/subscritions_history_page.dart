import 'package:doctorconsultant/models/doctor_model.dart';

import '../../utils/exporter.dart';

class SubscritionsHistoryPage extends StatefulWidget {
  const SubscritionsHistoryPage({super.key});

  @override
  State<SubscritionsHistoryPage> createState() =>
      _SubscritionsHistoryPageState();
}

class _SubscritionsHistoryPageState extends State<SubscritionsHistoryPage> {
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
            'Subscriptions',
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
        child: ListView(
          children: doctors.map((doctor) {
            return Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 175,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFF3FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        width: 249,
                        height: 249,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(doctor.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Positioned(
                      left: 20,
                      top: 40,
                      child: Column(
                        children: [
                          Text(
                            'Dr. Caroline',
                            style: GoogleFonts.mulish(
                              color: Color(0xFF222222),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '28 ',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFF1D6AFF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: '/ 30 days',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFF9093A3),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 106,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1D6AFF),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Detail',
                              style: GoogleFonts.mulish(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          )
                        ],
                      ))
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
