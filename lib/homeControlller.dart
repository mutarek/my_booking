import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:my_booking/booking_model.dart';

class HomeController extends GetxController{
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  var hotelModel = <Booking>[].obs;

  @override
  void onInit() {
    collectionReference = firebaseFirestore.collection('Booking');
    hotelModel.bindStream(getAllBooking());
    super.onInit();
  }

  Stream<List<Booking>> getAllBooking() => collectionReference
      .snapshots()
      .map((event) => event.docs.map((e) => Booking.fromMap(e)).toList());

}
