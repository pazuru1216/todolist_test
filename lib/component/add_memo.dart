import 'package:flutter/material.dart';

class AddMemo extends StatelessWidget {
  AddMemo({super.key});

  final _formKey = GlobalKey<FormState>();
  String? memoData;

  @override
  Widget build(BuildContext context) {

    ///Form으로 전체 TextFormField를 제어
    return Form(
      ///Form을 실행할때 필요한 단 하나있는 _formKey
      key: _formKey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey[300]),
              cursorColor: Colors.grey,

              ///값을 저장하는 onSaved
              onSaved: (String? value) {
                print('onSaved active');
                memoData = value;
              },

              ///값을 검토하는 validator
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'error no @'
                    : null;
              },
            ),
          ),

          ///완료버튼
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                ///값을 검토하고
                if (_formKey.currentState!.validate()) {
                  ///값이 true를 반환하면 값을 저장한다
                  ///이게 없으면 값 저장이 안됨
                  _formKey.currentState!.save();
                  print(memoData);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              child: Text('저장'),
            ),
          )
        ],
      ),
    );
  }
}
