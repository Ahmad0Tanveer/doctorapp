class AvailabilityModel {
  final String day;
  final String dayName;
  final List<TimeSlot> slots;

  AvailabilityModel(
      {required this.day, required this.dayName, required this.slots});
}

class TimeSlot {
  final String time;
  final bool available;

  TimeSlot({required this.time, required this.available});
}

List<AvailabilityModel> availability = [
  AvailabilityModel(day: "10", dayName: "MON", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
  AvailabilityModel(day: "11", dayName: "TUE", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
  AvailabilityModel(day: "12", dayName: "WED", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
  AvailabilityModel(day: "13", dayName: "THU", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
  AvailabilityModel(day: "14", dayName: "FRI", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
  AvailabilityModel(day: "15", dayName: "SAT", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
  AvailabilityModel(day: "16", dayName: "SUN", slots: [
    TimeSlot(time: "09:00 - 10:00", available: false),
    TimeSlot(time: "10:00 - 11:00", available: true),
    TimeSlot(time: "11:00 - 12:00", available: false),
    TimeSlot(time: "12:00 - 13:00", available: true),
    TimeSlot(time: "13:00 - 14:00", available: false),
    TimeSlot(time: "14:00 - 15:00", available: true),
    TimeSlot(time: "15:00 - 16:00", available: false),
    TimeSlot(time: "16:00 - 17:00", available: true),
  ]),
];
