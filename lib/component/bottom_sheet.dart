import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomAddSheet extends StatefulWidget {
  const BottomAddSheet({super.key});

  @override
  State<BottomAddSheet> createState() => _BottomAddSheetState();
}

class _BottomAddSheetState extends State<BottomAddSheet> {
  DateTime startTime = DateTime.now().toUtc();
  DateTime endTime = DateTime.now().toUtc();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        height: 250,
        child: Column(
          children: [
            ///시작날짜
            Container(
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
                                      print(startTime);
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
                                          print(endTime);
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
            ),

            ///태그
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Text('#공부'),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),

            ///메모
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[300]),
                cursorColor: Colors.grey,
              ),
            ),

            ///완료버튼
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: Text('저장'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
