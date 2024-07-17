import 'package:doctorconsultant/models/doctor_model.dart';
import 'package:doctorconsultant/screens/profile/setttings_page.dart';
import '../../utils/exporter.dart';
import '../profile/notifications_page.dart';
import '../profile/subscritions_history_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> options = [
    'My Account',
    'My Subscription',
    'Notifications',
    'Settings',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 812,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 80),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFEFF3FA),
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage(doctors[2].image),
                          fit: BoxFit.cover,
                        )),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Jimmy Sullivan',
                      style: GoogleFonts.mulish(
                        color: Color(0xFF222222),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  Container(
                    child: Text(
                      '@jimmy240',
                      style: GoogleFonts.mulish(
                        color: Color(0xFF9093A3),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            height: 100,
            decoration: ShapeDecoration(
              color: Color(0xFF1D6AFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Balance',
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '\$1200.00',
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          '1280',
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Points',
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ...options.map((option) {
            int index = options.indexOf(option);
            return Column(
              children: [
                SizedBox(height: 10),
                Container(
                  child: InkWell(
                    onTap: () {
                      if(index == 1){
                        Get.to(() => SubscritionsHistoryPage());
                      }
                      if (index == 2) {
                        Get.to(() => NotificationsPage());
                      }
                      if(index == 3){
                        Get.to(() => SettingsPage());
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          option,
                          style: GoogleFonts.mulish(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: Get.width,
                  height: 1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFDEE1E6)),
                  ),
                )
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
