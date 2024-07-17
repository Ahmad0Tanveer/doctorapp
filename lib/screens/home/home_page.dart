import '../../models/doctor_model.dart';
import '../../utils/exporter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              searchWidget(),
              SizedBox(height: 30),
              topDoctors(),
              SizedBox(height: 30),
              Text(
                'Recomended Doctor',
                style: GoogleFonts.mulish(
                  color: Color(0xFF222222),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 15),
              recomendedDoctors(),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchWidget() {
    return Container(
      height: 48,
      padding: EdgeInsets.only(left: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFFEFF3FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: TextField(
        onChanged: (t) {},
        style:  GoogleFonts.mulish(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: "Search your country or code",
          hintStyle: GoogleFonts.mulish(
            color: Color(0xFF9093A3),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.only(top: 16),
          border: InputBorder.none,
          suffixIcon: Icon(
            LucideIcons.search,
            size: 18,
          ),
        ),
      ),
    );
  }

  Widget topDoctors() {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: topDoctorsList.map((item) {
          return InkWell(
            onTap: () => Get.to(() => DoctorDetailsPage(doctor: item,)),
            child: Container(
              width: 80,
              child: Column(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFF3FA),
                      image: DecorationImage(
                          image: AssetImage(item.image), fit: BoxFit.cover),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item.name,
                    style: GoogleFonts.mulish(
                      color: Color(0xFF9093A3),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget recomendedDoctors() {
    return Container(
      child: Column(
        children: doctors.map((item) {
          return InkWell(
            onTap: () => Get.to(() => DoctorDetailsPage(doctor: item,)),
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              width: Get.width,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 120,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(item.image), fit: BoxFit.cover),
                      color: Color(0xFFEFF3FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: GoogleFonts.mulish(
                          color: Color(0xFF222222),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: item.rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 22,
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
                            "${item.rating}",
                            style: GoogleFonts.mulish(
                              color: Color(0xFF222222),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: Get.width - 175,
                        child: Text(
                          item.spacialist,
                          style: GoogleFonts.mulish(
                            color: Color(0xFF9093A3),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
