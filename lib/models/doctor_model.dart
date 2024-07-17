class DoctorModel {
  final String id;
  final String name;
  final String spacialist;
  final String location;
  final String image;
  final double rating;
  final bool live;

  DoctorModel(
      {required this.id,
      required this.name,
      required this.spacialist,
      required this.location,
      required this.image,
      required this.rating,
      required this.live});
}

List<DoctorModel> doctors = [
  DoctorModel(
      id: "1",
      name: "Dr. Brian Hanner",
      spacialist: "Dentist specialist since 2008 in LBC Hospital …",
      location: "Miami Hospital Center",
      image: "assets/doctors/1680252600.jpg",
      rating: 4.1,
      live: false
  ),
  DoctorModel(
      id: "2",
      name: "Dr. Caroline",
      spacialist: "Heart specialist since 2007 in Texas Miami …",
      location: "Miami Hospital Center",
      image: "assets/doctors/1680252314.jpg",
      rating: 5,
      live: true
  ),
  DoctorModel(
      id: "3",
      name: "Dr. Tony Chooper",
      spacialist: "Dentist specialist since 2008 in LBC Hospital …",
      location: "Miami Hospital Center",
      image: "assets/doctors/1703331158.jpg",
      rating: 4.7,
      live: false
  ),
  DoctorModel(
      id: "4",
      name: "Dr. Emily Grant",
      spacialist: "Pediatric specialist since 2010 in Child Care Clinic …",
      location: "Sunnyvale Medical Center",
      image: "assets/doctors/1680252383.jpg",
      rating: 4.1,
      live: true
  ),
  DoctorModel(
      id: "5",
      name: "Dr. Mark Sloan",
      spacialist: "Orthopedic specialist since 2012 in Orthopedic Care …",
      location: "Seattle Grace Hospital",
      image: "assets/doctors/1680252405.jpg",
      rating: 4.6,
      live: false
  ),
  DoctorModel(
      id: "6",
      name: "Dr. Julia Adams",
      spacialist: "Neurologist specialist since 2009 in Brain & Spine Center …",
      location: "Harvard Medical School",
      image: "assets/doctors/1680252600.jpg",
      rating: 4.8,
      live: true
  ),
  DoctorModel(
      id: "7",
      name: "Dr. Michael Tan",
      spacialist: "Cardiologist specialist since 2015 in Heart Health Institute …",
      location: "Stanford Hospital",
      image: "assets/doctors/1680252650.jpg",
      rating: 4.9,
      live: false
  ),
  DoctorModel(
      id: "8",
      name: "Dr. Sara Lee",
      spacialist: "Gynecologist specialist since 2011 in Women's Health Center …",
      location: "UCLA Medical Center",
      image: "assets/doctors/1680252707.jpg",
      rating: 4.7,
      live: true
  ),
];

List<DoctorModel> topDoctorsList = [
  DoctorModel(
      id: "1",
      name: "Dr. Caroline",
      spacialist: "Dentist specialist since 2008 in LBC Hospital …",
      location: "Miami Hospital Center",
      image: "assets/doctors/1680252600.jpg",
      rating: 4.5,
      live: false
  ),
  DoctorModel(
      id: "2",
      name: "Dr. Jemmy",
      spacialist: "Heart specialist since 2007 in Texas Miami …",
      location: "Miami Hospital Center",
      image: "assets/doctors/1680252314.jpg",
      rating: 4.5,
      live: true
  ),
  DoctorModel(
      id: "3",
      name: "Dr. Brian",
      spacialist: "Dentist specialist since 2008 in LBC Hospital …",
      location: "Miami Hospital Center",
      image: "assets/doctors/1703331158.jpg",
      rating: 4.5,
      live: false
  ),
  DoctorModel(
      id: "4",
      name: "Dr. Clara",
      spacialist: "Pediatric specialist since 2010 in Child Care Clinic …",
      location: "Sunnyvale Medical Center",
      image: "assets/doctors/1680252383.jpg",
      rating: 4.7,
      live: true
  ),
  DoctorModel(
      id: "5",
      name: "Dr. Mark",
      spacialist: "Orthopedic specialist since 2012 in Orthopedic Care …",
      location: "Seattle Grace Hospital",
      image: "assets/doctors/1680252405.jpg",
      rating: 4.6,
      live: false
  ),
  DoctorModel(
      id: "6",
      name: "Dr. Julia",
      spacialist: "Neurologist specialist since 2009 in Brain & Spine Center …",
      location: "Harvard Medical School",
      image: "assets/doctors/1680252600.jpg",
      rating: 4.8,
      live: true
  ),
  DoctorModel(
      id: "7",
      name: "Dr. Tan",
      spacialist: "Cardiologist specialist since 2015 in Heart Health Institute …",
      location: "Stanford Hospital",
      image: "assets/doctors/1680252650.jpg",
      rating: 4.9,
      live: false
  ),
  DoctorModel(
      id: "8",
      name: "Dr. Sara",
      spacialist: "Gynecologist specialist since 2011 in Women's Health Center …",
      location: "UCLA Medical Center",
      image: "assets/doctors/1680252707.jpg",
      rating: 4.7,
      live: true
  ),
];