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
          ElevatedButton(onPressed: () {},
              child: const Text("ElevatedButton")),
          OutlinedButton(onPressed: (){}, child: const Text("OutlineButton")),
          TextButton(onPressed: (){}, child: const Text("TextButton")),
          GestureDetector(onTap: (){}, child: const Text("GestureDetector"),)
        ],
      ),
      )
    );
  }
}