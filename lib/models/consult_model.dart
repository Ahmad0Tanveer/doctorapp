class ConsultModel{
  final String name;
  final String imagePath;
  ConsultModel({required this.name, required this.imagePath});
}
List<ConsultModel> allTypes = [
  ConsultModel(name: "Psycology", imagePath: "assets/types/Bitmap-1.png"),
  ConsultModel(name: "Dentist", imagePath: "assets/types/Bitmap-2.png"),
  ConsultModel(name: "Mouth", imagePath: "assets/types/Bitmap-3.png"),
  ConsultModel(name: "Bone", imagePath: "assets/types/Bitmap-4.png"),
  ConsultModel(name: "WorkOut", imagePath: "assets/types/Bitmap-5.png"),
  ConsultModel(name: "Foods", imagePath: "assets/types/Bitmap.png"),
];