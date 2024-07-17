import 'package:doctorconsultant/models/pricing_plan_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/exporter.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  var activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyBackButton(),
              const SizedBox(height: 50),
              Text(
                'Choose Your\nBest Plan',
                style: GoogleFonts.mulish(
                  color: Color(0xFF222222),
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'You can start with free access and\nthen upgrade with subscirtion',
                style: GoogleFonts.mulish(
                  color: Color(0xFF9093A3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 13),
              Column(
                children: plans.map((plan) {
                  int index = plans.indexOf(plan);
                  bool active = index == activeIndex;
                  var dStyle = GoogleFonts.mulish(
                    color: Color(0xFFEEEEEE),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  );
                  var tStyle = GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  );
                  var sStyle = GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  );
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    child: Container(
                      width: Get.width,
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.all(31),
                      decoration: active
                          ? ShapeDecoration(
                              color: Color(0xFF1D6AFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )
                          : ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFDEE1E6)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                      child: Column(
                        children: [
                          Text(
                            '\$${plan.amount} / ${plan.duration}',
                            style: active
                                ? tStyle
                                : tStyle.copyWith(
                                    color: Color(0xFF222222),
                                  ),
                          ),
                          SizedBox(height: 22),
                          Text(
                            '${plan.description}',
                            textAlign: TextAlign.center,
                            style: active
                                ? dStyle
                                : dStyle.copyWith(
                                    color: Color(0xFF222222),
                                  ),
                          ),
                          SizedBox(height: 27),
                          Text(
                            'I Choose this',
                            style: active
                                ? sStyle
                                : sStyle.copyWith(
                                    color: Color(0xFF222222),
                                  ),
                          ),
                        ],
                      ),
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
