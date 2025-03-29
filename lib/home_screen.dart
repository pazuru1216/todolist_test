import 'package:flutter/material.dart';
import 'package:test_db/component/day_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              DayCard(),
              DayCard(),
            ],
          ),
        ),
      ),
    );
  }
}
