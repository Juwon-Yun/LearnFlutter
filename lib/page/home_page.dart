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
      // 자식이 없다면 전체 화면을 먹는다.
      // 있다면 width 만큼 먹는다.
      body: Container(color: Colors.yellow,
          // padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          // alignment: Alignment.center,
          // alignment: Alignment.topCenter,
          // x = 0, y = 0이 center이다.
          alignment: const Alignment(0, -1),
          child: const Text("flutter juwon ")),
    );
  }
}
