import 'package:flutter/material.dart';

class MyButtons2 extends StatelessWidget{
  MyButtons2({Key? key}) : super(key : key);

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Buttons Second Lecture'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
          onPressed: (){
            count++;
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