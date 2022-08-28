import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatelessWidget {
  String currentdate = DateFormat.MMMEd().format(DateTime.now());
  String currenttime = DateFormat('kk:mm a').format(DateTime.now());
  TimeOfDay? pickedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            padding: EdgeInsets.all(5),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
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
                              lastDate: DateTime(DateTime.now().year,DateTime.now().month+1,DateTime.now().day));
                          if (pickedTime != null) {
                            // selectController.currentDate.value =
                            //     DateFormat.MMMEd().format(pickedTime);
                            // selectController.newDate.value = DateTime(
                            //     pickedTime.year,
                            //     pickedTime.month,
                            //     pickedTime.day + 1);
                            // selectController.dayInstance.value = DateTime(
                            //     pickedTime.year,
                            //     pickedTime.month,
                            //     pickedTime.day);
                          }
                        },
                        child: Text(
                          currentdate,
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () async {
                          pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                        },
                        child: Text(
                          currenttime,
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Upcoming Booking'),
      ),
    );
  }
}
