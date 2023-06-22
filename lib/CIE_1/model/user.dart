class Users {
  final String USN;
  final String MAT;
  final String DS;
  final String CO;
  final String ADE;
  final String Java;

  const Users({
    required this.USN,
    required this.MAT,
    required this.DS,
    required this.CO,
    required this.ADE,
    required this.Java,
  });
  Users copy({
   String? USN,
    String? MAT,
    String? DS,
    String? CO,
    String? ADE,
    String? Java,
}) =>
      Users(
        USN: USN ?? this.USN,
        MAT: MAT?? this.MAT,
        DS: DS?? this.DS,
        CO: CO?? this.CO,
        ADE: ADE?? this.ADE,
        Java: Java?? this.Java,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Users &&
              runtimeType == other.runtimeType &&
              USN==other.USN &&
              MAT==other.MAT&&
              DS ==other.DS &&
              CO==other.CO &&
              ADE==other.ADE&&
              Java==other.Java;

  @override
  int get hashCode =>USN.hashCode ^MAT.hashCode^ DS.hashCode ^CO.hashCode ^ADE.hashCode ^Java.hashCode;
}