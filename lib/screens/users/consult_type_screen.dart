import 'package:doctorconsultant/models/consult_model.dart';

import '../../utils/exporter.dart';

class ConsultTypeScreen extends StatefulWidget {
  const ConsultTypeScreen({super.key});
  @override
  State<ConsultTypeScreen> createState() => _ConsultTypeScreenState();
}

class _ConsultTypeScreenState extends State<ConsultTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyBackButton(),
              const SizedBox(height: 50),
               Text(
                'What do you\nwant to consult?',
                style: GoogleFonts.mulish(
                  color: Color(0xFF222222),
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
               Text(
                'You can choose more than one',
                style: GoogleFonts.mulish(
                  color: Color(0xFF9093A3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: Get.width,
                child:  Wrap(
                  runSpacing: 24,
                  spacing: 1,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: allTypes.map((item){
                    return SizedBox(
                      width: Get.width/3  - 35,
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            padding: const EdgeInsets.all(20),
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: OvalBorder(
                                side: BorderSide(width: 1, color: Color(0xFFDEE1E6)),
                              ),
                            ),
                            child: Image.asset(item.imagePath),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item.name,
                            style:  GoogleFonts.mulish(
                              color: Color(0xFF9093A3),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const Spacer(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.to(() => const BottomBarPage()),
                    child: Container(
                      width: 208,
                      height: 62,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1D6AFF),
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
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
