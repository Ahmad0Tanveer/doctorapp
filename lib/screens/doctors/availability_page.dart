import 'package:doctorconsultant/models/availablity_model.dart';
import '../../utils/exporter.dart';

class AvailabilityPage extends StatefulWidget {
  const AvailabilityPage({super.key});

  @override
  State<AvailabilityPage> createState() => _AvailabilityPageState();
}

class _AvailabilityPageState extends State<AvailabilityPage> {
  String activeDate = availability[0].day;
  List<TimeSlot> slots = availability[0].slots;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Row(
                children: [
                  const MyBackButton(),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                'Book Your\nConsult Day',
                style: GoogleFonts.mulish(
                  color: Color(0xFF222222),
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Please select the day and time \nbefore go for consultation day',
                style: GoogleFonts.mulish(
                  color: Color(0xFF9093A3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 72,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: availability.map((day) {
                    bool active = activeDate == day.day;
                    var dStyle = GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    );
                    var d2Style = GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    );
                    return GestureDetector(
                      onTap: () {
                        activeDate = day.day;
                        slots = day.slots;
                        setState(() {});
                      },
                      child: Container(
                        width: 62,
                        height: 72,
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        decoration: active
                            ? ShapeDecoration(
                                color: Color(0xFF1D6AFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              )
                            : ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFDEE1E6)),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              day.dayName,
                              style: active
                                  ? dStyle
                                  : dStyle.copyWith(
                                      color: Colors.black,
                                    ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              day.day,
                              style: active
                                  ? d2Style
                                  : d2Style.copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Column(
                children: slots.map((s) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 29),
                    margin: EdgeInsets.only(top: 15),
                    height: 78,
                    decoration: s.available
                        ? ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x42A6A6A6),
                                blurRadius: 20,
                                offset: Offset(0, 8),
                                spreadRadius: 0,
                              )
                            ],
                          )
                        : ShapeDecoration(
                            color: Color(0xFFEFF3FA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                    child: Row(
                      children: [
                        Text(
                          '${s.time}',
                          style: GoogleFonts.mulish(
                            color:
                                s.available ? Colors.black : Color(0xFF9093A3),
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          s.available ? "Selected" : 'Booked',
                          style: GoogleFonts.mulish(
                            color:
                                s.available ? Colors.black : Color(0xFF1D6AFF),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
