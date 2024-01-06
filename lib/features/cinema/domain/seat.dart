// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Seat {
  final String uid;
  final int seatNumber;
  final String rowLetter;
  final bool taken;
  final String seatType;
  final double seatPrice;
  Seat({
     this.uid = "",
    required this.seatNumber,
    required this.rowLetter,
    this.taken = false,
  })  : seatType =
            (seatNumber > 45 && seatNumber < 136) ? "ordinary" : "discounted",
        seatPrice = (seatNumber > 45 && seatNumber < 136) ? 20000 : 15000;

  Seat copyWith({
    String? uid,
    int? seatNumber,
    String? rowLetter,
    bool? taken,
    String? seatType,
    double? seatPrice,
  }) {
    return Seat(
      uid: uid ?? this.uid,
      seatNumber: seatNumber ?? this.seatNumber,
      rowLetter: rowLetter ?? this.rowLetter,
      taken: taken ?? this.taken,
 
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'seatNumber': seatNumber,
      'rowLetter': rowLetter,
      'taken': taken,
      'seatType': seatType,
      'seatPrice': seatPrice,
    };
  }

  factory Seat.fromMap(Map<String, dynamic> map) {
    return Seat(
      uid: map['uid'] as String,
      seatNumber: map['seatNumber'] as int,
      rowLetter: map['rowLetter'] as String,
      taken: map['taken'] as bool,
     
    );
  }

  String toJson() => json.encode(toMap());

  factory Seat.fromJson(String source) => Seat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Seat(uid: $uid, seatNumber: $seatNumber, rowLetter: $rowLetter, taken: $taken, seatType: $seatType, seatPrice: $seatPrice)';
  }

  @override
  bool operator ==(covariant Seat other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.seatNumber == seatNumber &&
      other.rowLetter == rowLetter &&
      other.taken == taken &&
      other.seatType == seatType &&
      other.seatPrice == seatPrice;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      seatNumber.hashCode ^
      rowLetter.hashCode ^
      taken.hashCode ^
      seatType.hashCode ^
      seatPrice.hashCode;
  }
}
