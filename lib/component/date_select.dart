import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DateSelect extends StatefulWidget {
  const DateSelect({super.key});

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  DateTime startTime = DateTime.now().toUtc();
  DateTime endTime = DateTime.now().toUtc();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
                onTap: () {
                  showCupertinoDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.white,
                            height: 300,
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.dateAndTime,
                              onDateTimeChanged: (DateTime date) {
                                setState(() {
                                  startTime = date;
                                });
                              },
                              dateOrder: DatePickerDateOrder.ymd,
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                    '${startTime.year}년 ${startTime.month}월 ${startTime.day}일 ${startTime.hour}시 ${startTime.minute}분'),
              )),

          ///끝나는 날짜
          Expanded(
              child: GestureDetector(
                onTap: () {
                  showCupertinoDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.white,
                            height: 300,
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.dateAndTime,
                              onDateTimeChanged: (DateTime date) {
                                setState(() {
                                  endTime = date;
                                });
                              },
                              dateOrder: DatePickerDateOrder.ymd,
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                    '${endTime.year}년 ${endTime.month}월 ${endTime.day}일 ${endTime.hour}시 ${endTime.minute}분'),
              )),
        ],
      ),
    );
  }
}
