import '../../utils/exporter.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/splash.png"),
            const SizedBox(height: 20),
            const Spacer(),
             Text(
              'Let’s get started',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                color: Color(0xFF222222),
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
             Text(
              'Let’s consult wit doctor now',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                color: Color(0xFF9093A3),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
            onTap: () => Get.to(() => LoginPage()),
              child: Container(
                width: 208,
                height: 62,
                decoration: ShapeDecoration(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(31),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Get Started',
                  style: GoogleFonts.mulish(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
