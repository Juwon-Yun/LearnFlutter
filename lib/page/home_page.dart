// StatelessWidget을 상속 받고 build로 그린다.
import 'package:flutter/material.dart';

class JuwonHomePage extends StatelessWidget {
  const JuwonHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // flutter is not recommend new keyword
      // container color는 자식이 없다면 전체 화면을 먹는다.
      // 있다면 width 만큼 먹는다.
      // Center위젯은 옵션이 별로없어서 주로 container를 사용한다.
        // 만약에 padding 밖에 없다면 container대신에 padding 역활만 하는 위젯을 사용하는 것을 추천한다.
      body: Container(color: Colors.yellow,
          // padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          // alignment: Alignment.center,
          // alignment: Alignment.topCenter,
          // x = 0, y = 0이 center이다.
          alignment: const Alignment(0, -1),
          width: 200,
          height: 300,
          // SizedBox를 감싼 자식을
          child: const SizedBox(
            // width: 200,
           // height: 200,
           child : Text("flutter juwon ", style: TextStyle(fontSize: 20),
           ),
          ),
          )
    );
  }
}
