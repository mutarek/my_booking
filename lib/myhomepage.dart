import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_booking/add_booking_controller.dart';
import 'package:my_booking/booking_model.dart';
import 'package:my_booking/homeControlller.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  final controller = Get.put(AddBookingController());
  final homecon = Get.put(HomeController());
  final busname = TextEditingController();
  final customername = TextEditingController();
  final seat = TextEditingController();
  final numer = TextEditingController();
  final from = TextEditingController();
  final to = TextEditingController();
  final exacttime = TextEditingController();
  final firebase = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Obx(() => Container(
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: busname,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'Bus Name',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: customername,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'Customer Name',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: from,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'From',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: to,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'To',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: seat,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'Seat No',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: numer,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'Number',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Colors.red,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () async {
                              DateTime? pickedTime = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(
                                      DateTime.now().year,
                                      DateTime.now().month + 1,
                                      DateTime.now().day));
                              if (pickedTime != null) {
                                controller.pickedDate.value =
                                    DateFormat.MMMEd().format(pickedTime);
                              }
                            },
                            child: Text(
                              controller.pickedDate.value.isEmpty
                                  ? controller.currentdate.value
                                  : controller.pickedDate.value,
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            controller: exacttime,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                              counter: null,
                              counterText: "",
                              hintText: 'Exact Time',
                              hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            maxLength: 31,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          final docData = {
                            "bus_name": busname.text,
                            "customer_name": customername.text,
                            "seatno": seat.text,
                            "number": numer.text,
                            "journey_date": controller.pickedDate.value,
                            "journey_time": exacttime.text,
                            'journey_from': from.text,
                            'journey_to': to.text,
                            "booking_time": controller.currentdate.value,
                            'isdone': false
                          };
                          firebase
                              .collection("Booking")
                              .doc()
                              .set(docData)
                              .onError((e, _) =>
                                  print("Error writing document: $e"));
                          Get.back();
                        },
                        child: Text('Add data'),
                      ),
                    )
                  ],
                ),
              )));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Upcoming Booking'),
      ),
      body: Obx(() => Padding(
            padding: EdgeInsets.all(5),
            child: ListView.builder(
              itemCount: homecon.hotelModel.length,
              itemBuilder: (_, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    height: 180,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                  child: Text(
                                homecon.hotelModel[index].bus_name.toString(),
                                style:
                                    TextStyle(fontSize: 25, color: Colors.red),
                              )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                  child: Text(
                                      homecon.hotelModel[index].customer_name
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            "Journey: " +
                                homecon.hotelModel[index].journey_date
                                    .toString() +" "+
                                "Time: " +
                                homecon.hotelModel[index].time.toString(),
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.green),
                          ),
                        ),
                        Text(
                          "Booking: " +
                              homecon.hotelModel[index].booking_time.toString(),
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                  child: Text(
                                   "FROM: "+ homecon.hotelModel[index].from.toString(),
                                    style:
                                    TextStyle(fontSize: 20, color: Colors.red),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                  child: Text(
                                     "TO: "+ homecon.hotelModel[index].to
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(homecon.hotelModel[index].seatno
                                        .toString()),
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      launch("tel://" +
                                          homecon.hotelModel[index].number
                                              .toString());
                                    },
                                    child: Text(homecon.hotelModel[index].number
                                        .toString()),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
