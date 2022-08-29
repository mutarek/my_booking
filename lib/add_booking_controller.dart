import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddBookingController extends GetxController{
  var currentdate = DateFormat.MMMEd().format(DateTime.now()).obs;
  var currenttime = DateFormat('kk:mm a').format(DateTime.now()).obs;
  var pickedTime =''.obs;
  var pickedDate = ''.obs;
}