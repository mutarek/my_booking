import 'package:cloud_firestore/cloud_firestore.dart';

class Booking{
  String? id;
  String? bus_name;
  String? customer_name;
  String? seatno;
  String? number;
  String? journey_date;
  String? journey_time;
  String? booking_time;

  Booking({this.id, this.bus_name, this.customer_name, this.seatno, this.number,
      this.journey_date, this.journey_time, this.booking_time});

  Booking.fromMap(DocumentSnapshot documentSnapshot){
    id = documentSnapshot.id;
    bus_name = documentSnapshot['bus_name'];
    customer_name = documentSnapshot['customer_name'];
    seatno = documentSnapshot['seatno'];
    number = documentSnapshot['number'];
    journey_date = documentSnapshot['journey_date'];
    journey_time = documentSnapshot['journey_time'];
    booking_time = documentSnapshot['booking_time'];
  }
}