// StatelessWidget을 상속 받고 build로 그린다.
import 'package:flutter/material.dart';

class MultipleWidgetPage extends StatelessWidget {
  const MultipleWidgetPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("flutter my app bar"),
        ),
        body: Column(
          children: [
            Container(
              color : Colors.yellow,
              height : 300,
              child: const Text("flutter my home page"),
            ),
            Container(
              color : Colors.yellow,
              height : 300,
              child: const Text("flutter my home page"),
            )
          ],
        ),
            );
  }
}
