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
          title: const Text('flutter my app bar'),
        ),
        // body: Column(
        //   children: [
        //     Container(
        //       color : Colors.yellow,
        //       height : 100,
        //       child: const Text('flutter my home page'),
        //     ),
        //     Container(
        //       color : Colors.green,
        //       height : 100,
        //       child: const Text('flutter my home page'),
        //     )
        //   ],
        // ),
      // Wrap => overflow시에 정해놓은 방향으로 넘어간다.
      body: Wrap(
        // direction: Axis.vertical,
        // width를 설정하지 않으면 텍스트 크기만큼 차지한다.
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color : Colors.yellow,
              alignment: Alignment.center,
              width : 90,
              height : 80,
              child: const Text('1'),
            ),
            Container(
              color : Colors.green,
              alignment: Alignment.center,
              // width : 100,
              height : 100,
              child: const Text('1'),
            ),
            Container(
              color : Colors.redAccent,
              alignment: Alignment.center,
              width : 100,
              height : 100,
              child: const Text('1'),
            )
          ],
      ),
    );
  }
}
