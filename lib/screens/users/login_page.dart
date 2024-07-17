import 'package:country_picker/country_picker.dart';
import '../../utils/exporter.dart';

List<Country> countries = [];
late Country country;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final CountryService _countryService = CountryService();

  @override
  void initState() {
    countries = _countryService.getAll();
    for (var c in countries) {
      if (c.countryCode == "PK") {
        setState(() {
          country = c;
        });
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(height: 102),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/avatar.png",
                height: 200,
                width: 200,
              ),
            ],
          ),
          const SizedBox(height: 78),
          Text(
            'Connect with your\nmatch doctor',
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Get your best experience now!',
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(
              color: Color(0xFFFAFAFA),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () => Get.to(() => const CountrySelectPage()),
            child: Container(
              padding: const EdgeInsets.all(35),
              width: Get.width,
              height: 246,
              decoration: const ShapeDecoration(
                color: Colors.white,
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
                    'Welcome to DocQ!',
                    style: GoogleFonts.mulish(
                      color: Color(0xFF222222),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
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
                        style: GoogleFonts.mulish(fontSize: 40),
                      ),
                      const Icon(Icons.arrow_drop_down),
                      Text(
                        '+${country.phoneCode} ',
                        style: GoogleFonts.mulish(
                          color: Color(0xFF9093A3),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                          child: TextField(
                        style: GoogleFonts.mulish(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: country.example,
                            hintStyle: GoogleFonts.mulish(
                              color: Color(0xFF9093A3),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                      )),
                    ],
                  ),
                  Container(
                    width: 315.0,
                    height: 1.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFDEE1E6),
                        width: 1.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
