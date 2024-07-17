import '../../models/bootbar_model.dart';
import '../../utils/exporter.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int current = 1;
  var pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              onPageChanged: (i) {
                current = i;
                setState(() {});
              },
              children: bars.map((i) {
                return i.page;
              }).toList(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: 150,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: bars.map((item) {
                  int index = bars.indexOf(item);
                  bool active = current == index;
                  return GestureDetector(
                    onTap: () {
                      current = index;
                      pageController.jumpToPage(current);
                      setState(() {});
                    },
                    child: !active
                        ? Container(
                            width: 72,
                            child: item.imagePath.isEmpty
                                ? Icon(
                                    item.iconData,
                                    size: 24,
                                    color: const Color(0xFF626262),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 42,
                                        height: 42,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(item.imagePath),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: const OvalBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                          )
                        : Container(
                            width: 72,
                            height: 90,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF1D6AFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (item.imagePath.isEmpty)
                                  Icon(
                                    item.iconData,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                if (item.imagePath.isNotEmpty)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 42,
                                        height: 42,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(item.imagePath),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: const OvalBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                const SizedBox(height: 9),
                                 Text(
                                  item.title,
                                  style:  GoogleFonts.mulish(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
