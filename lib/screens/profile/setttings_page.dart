import '../../utils/exporter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;

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
            'Settings',
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF9093A3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSwitched = !isSwitched;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 28,
                    child: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 28,
                          decoration: BoxDecoration(
                            color: isSwitched ? Color(0xFF1D6AFF) : Colors.grey,
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          left: isSwitched ? 25 : 3,
                          top: 3,
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ask before buy',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF9093A3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSwitched1 = !isSwitched1;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 28,
                    child: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 28,
                          decoration: BoxDecoration(
                            color: isSwitched1 ? Color(0xFF1D6AFF) : Colors.grey,
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          left: isSwitched1 ? 25 : 3,
                          top: 3,
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Color blind mode',
                  style: GoogleFonts.mulish(
                    color: Color(0xFF9093A3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSwitched2 = !isSwitched2;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 28,
                    child: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 28,
                          decoration: BoxDecoration(
                            color: isSwitched2 ? Color(0xFF1D6AFF) : Colors.grey,
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          left: isSwitched2 ? 25 : 3,
                          top: 3,
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
