class User {
  final int SLNO;
  final String USN;
  final String Name;
  final String Attendance;


  const User({
    required this.SLNO,
    required this.USN,
    required this.Name,
    required this.Attendance,


  });

  User copy({
    int ?SLNO,
    String? USN,
    String? Name,
    String? Attendance,


  }) =>
      User(
        SLNO: SLNO?? this.SLNO,
        USN: USN ?? this.USN,
        Name: Name ?? this.Name,
        Attendance: Attendance ?? this.Attendance,

      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              Name == other.Name &&
              Attendance == other.Attendance &&
              USN==other.USN &&
              SLNO == other.SLNO;

  @override
  int get hashCode =>SLNO.hashCode ^USN.hashCode^ Name.hashCode ^ Attendance.hashCode ;
}