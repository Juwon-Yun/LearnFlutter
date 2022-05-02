// StatelessWidget을 상속 받고 build로 그린다.
import 'package:flutter/material.dart';

// private
class _HomePage extends StatelessWidget {
  const _HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // flutter is not recommend new keyword
      body: const Text("Flutter"),
    );
  }
}