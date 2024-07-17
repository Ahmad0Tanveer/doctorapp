import '../../utils/exporter.dart';

class MyBackButton extends StatefulWidget {
  final Color bgColor;
  const MyBackButton({super.key, this.bgColor = const Color(0xFFEFF3FA)});
  @override
  State<MyBackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<MyBackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.only(left: 7),
        decoration:  ShapeDecoration(
          color: widget.bgColor,
          shape: OvalBorder(),
        ),
        child: const Icon(Icons.arrow_back_ios,size: 18),
      ),
    );
  }
}
