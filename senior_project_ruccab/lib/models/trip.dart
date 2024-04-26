class Trip {
  final String startingPoint;
  final String destination;
  final String time;
  final int passengerCount;
  final int fee;

  Trip(
      {required this.startingPoint,
      required this.destination,
      required this.time,
      required this.passengerCount,
      required this.fee});
}
