import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Flutter My App Bar"),
    ),
      body: Container(
      width: double.infinity,
       child : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   child: ElevatedButton( onPressed:  (){}, child: const Text("안녕"),),
          // ),
          ElevatedButton(
              onPressed: () {
            print("ElevatedButton");
              },
              onLongPress: (){print("ElevatedButton LongPress");},
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  onPrimary: Colors.blue,
              ),
              // button의 child에 직접적으로 style을 넣는 것은 권장하지 않는다.
              // child의 style이 상위 위젯의 스타일보다 우선적으로 적용되기 때문에.
              child: const Text("ElevatedButton")),
          OutlinedButton(onPressed: (){ print("OutlinedButton");}, child: const Text("OutlineButton")),
          TextButton(onPressed: (){ print("TextButton");}, child: const Text("TextButton")),
          GestureDetector(onTap: (){ print("GestureDetector");}, child: const Text("GestureDetector"),)
        ],
      ),
      )
    );
  }
}