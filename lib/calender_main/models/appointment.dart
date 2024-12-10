class Appointment {
  final String doctor;
  final DateTime time;
  final Duration duration;

  const Appointment({
    required this.doctor,
    required this.time,
    required this.duration,
  });
}