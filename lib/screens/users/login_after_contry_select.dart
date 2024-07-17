import '../../utils/exporter.dart';

class LoginAfterContrySelect extends StatefulWidget {
  const LoginAfterContrySelect({super.key});

  @override
  State<LoginAfterContrySelect> createState() => _LoginAfterContrySelectState();
}

class _LoginAfterContrySelectState extends State<LoginAfterContrySelect> {
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
                'Welcome to DocQ!',
                style: GoogleFonts.mulish(
                  color: Color(0xFF222222),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
               Text(
                'Insert your phone number to started',
                style: GoogleFonts.mulish(
                  color: Color(0xFF9093A3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    country.flagEmoji,
                    style:  GoogleFonts.mulish(fontSize: 40),
                  ),
                  const Icon(Icons.arrow_drop_down),
                  Text(
                    '+${country.phoneCode} ',
                    style:  GoogleFonts.mulish(
                      color: Color(0xFF9093A3),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    style:  GoogleFonts.mulish(
                      color: Color(0xFF222222),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: country.example,
                        hintStyle:  GoogleFonts.mulish(
                          color: Color(0xFF9093A3),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  )),
                ],
              ),
              Container(
                height: 1.0,
                margin: const EdgeInsets.only(top: 9),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFDEE1E6),
                    width: 1.0,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.to(() => const OtpInputPage()),
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
                      child:  Text(
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
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
