import '../utils/exporter.dart';

class RatingSubmitDialog extends StatefulWidget {
  const RatingSubmitDialog({super.key});
  @override
  State<RatingSubmitDialog> createState() => _RatingSubmitDialogState();
}

class _RatingSubmitDialogState extends State<RatingSubmitDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 420,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: Color(0xFFEFF3FA),
              shape: OvalBorder(),
            ),
            child: Text(
              "😚",
              style: TextStyle(fontSize: 60),
            ),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 35,
            itemPadding: EdgeInsets.all(5),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Color(0xFFFFD855),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Text(
            'Thanks for your\nawesome experience',
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(
              color: Color(0xFF9093A3),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          InkWell(
            onTap: (){
              Get.offAll(() => BottomBarPage());
            },
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
                'Back to home',
                style: GoogleFonts.mulish(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
