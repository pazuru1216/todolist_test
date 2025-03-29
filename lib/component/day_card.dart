import 'package:flutter/material.dart';
import 'package:test_db/component/shedules.dart';

class DayCard extends StatelessWidget {
  const DayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          ///대표날짜
          SizedBox(
            width: double.infinity,
            child: Text(
              '25.03.15',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          ///실선긋기
          Container(
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),

          ///일정
          Schedules(),
        ],
      ),
    );
  }
}
