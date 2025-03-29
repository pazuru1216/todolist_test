import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: 2, child: Text('014')),
          Expanded(flex: 2, child: Text('공부')),
          Expanded(flex: 2, child: Text('13PM')),
          Expanded(flex: 2, child: Text('16PM')),
          Expanded(
            flex: 5,
            child: GestureDetector(
              onTap: UpdateAreaTap,
              child: Text('플러터 공부하기'),
            ),
          ),
        ],
      ),
    );
  }

  UpdateAreaTap(){
    print('수정영역 눌렀다!');
  }

  DeleteButtonTap() {
    print('삭제버튼 눌렀다!');
  }
}
