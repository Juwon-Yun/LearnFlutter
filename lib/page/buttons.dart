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
          ElevatedButton(
            // press event를 null로 하면 disabled된다.
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  onPrimary: Colors.blue,
                // surface는 단순 컬러값만 받는다.
                onSurface: Colors.purple,
              ),
              // button의 child에 직접적으로 style을 넣는 것은 권장하지 않는다.
              // child의 style이 상위 위젯의 스타일보다 우선적으로 적용되기 때문에.
              child: const Text("ElevatedButton2")),
          OutlinedButton(
            onPressed: null,
            child: const Text("OutlineButton"),
            style: OutlinedButton.styleFrom(
                primary: Colors.blue,
                // 버튼이 비활성화 되었을때의 border값은 다른 방식으로 적용해야한다.
                side: const BorderSide(color: Colors.redAccent)),
          ),
          TextButton(onPressed: (){ print("TextButton");}, child: const Text("TextButton")),
          // 제스터 디텍터의 on 접두어 내장 메소드의 다양한 제스처를 감지 할 수 있다.
          // 버튼을 사용하기 애매할때 버튼의 이벤트만 가져올 수 있는 위젯이다.
          GestureDetector(
            onTap: (){ print("GestureDetector");},

            onTapDown: (detail){
              print("gesture ${detail.kind} | ${detail.globalPosition}");
            },
            child: Container(color: Colors.yellow, height: 100
              ,))
        ],
      ),
      )
    );
  }
}