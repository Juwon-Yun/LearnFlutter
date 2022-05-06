import 'package:flutter/material.dart';
//stful
//stless 숏컷이 있다.

// widget. 부모 위젯의 속성값을 사용할 수 있다. props?
class MyButtons2 extends StatefulWidget{
  // 생성자 인스턴스 에서 인수를 전달받는 것은 여기서
  MyButtons2({Key? key}) : super(key : key);

  @override
  State<MyButtons2> createState() => _MyButtons2State();
}

class _MyButtons2State extends State<MyButtons2> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Buttons Second Lecture'),
      ),
      // Scaffold안에 플로팅 버튼을 만들 수 있다.
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        tooltip: 'Increase',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
          onPressed: (){
            // build가 다시 호출됨
            setState(() {
              count++;
            });
            print("count : $count");
          },
          child: const Text('increase')
          ),
          Center(
            child: Text('$count'),
          )
        ],
      ),
    );
  }
}
