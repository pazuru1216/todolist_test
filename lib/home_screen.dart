import 'package:flutter/material.dart';

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
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
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
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(flex: 2, child: Text('014')),
                          Expanded(flex: 2, child: Text('공부')),
                          Expanded(flex: 2, child: Text('13PM')),
                          Expanded(flex: 2, child: Text('16PM')),
                          Expanded(flex: 5, child: Text('플러터 공부하기')),
                          Expanded(
                            child: Text('x', textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '25.03.16',
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
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(flex: 2, child: Text('014')),
                          Expanded(flex: 2, child: Text('공부')),
                          Expanded(flex: 2, child: Text('13PM')),
                          Expanded(flex: 2, child: Text('16PM')),
                          Expanded(flex: 5, child: Text('플러터 공부하기')),
                          Expanded(
                            child: Text('x', textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
