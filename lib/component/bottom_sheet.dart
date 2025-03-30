import 'package:flutter/material.dart';
import 'package:test_db/component/add_memo.dart';
import 'package:test_db/component/date_select.dart';

class BottomAddSheet extends StatefulWidget {
  const BottomAddSheet({super.key});

  @override
  State<BottomAddSheet> createState() => _BottomAddSheetState();
}

class _BottomAddSheetState extends State<BottomAddSheet> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        height: 280,
        child: Column(
          children: [
            ///시작, 마감날짜
            DateSelect(),

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
            AddMemo(),
          ],
        ),
      ),
    );
  }
}
