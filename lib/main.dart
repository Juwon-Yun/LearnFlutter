import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/page/align_spacer_expanded.dart';
import 'package:learn_flutter/page/buttons.dart';
import 'package:learn_flutter/page/buttons2.dart';
import 'package:learn_flutter/page/column_row_stack.dart';
import 'package:learn_flutter/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: const JuwonHomePage(),
      // home: const MultipleWidgetPage(),
      // home: const AlignSpacerExpandedWidgetPage(),
      // home : const MyButtons(),
      // home : MyButtons2(),
      // home: const MyHomePage(name: 'Juwon', title: 'Title',),
      home: const _ImageHomePage(),
    );
  }
}

class _ImageHomePage extends StatelessWidget {
  const _ImageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar( middle: Text("hi"),),
      body: Column(
        children: const [
         // Image.asset('assets/image/image011.jpeg', width: 100,fit: BoxFit.cover,),
         //  Image.asset('assets/image/imagegif001.gif', width: 300, fit: BoxFit.fill,),
          // 네트워크 이미지도 가능하다. 이미지를 url로 받아와서 캐시화 후에 화면에 렌더링
          // Image.network('https://photo.coolenjoy.net/data/editor/2101/17f13740b84a4beeeeb9d98c70ea5d44fc22f4c1.jpg', width: 100,),
          // Image.file(), file 객체를 받아와서 이미지로 출력한다. 외부 폴더나 갤러리에 있는 이미지를 받아올 때 사용함
          // const FlutterLogo( size: 300,)
          // Placeholder()
          CupertinoSearchTextField(prefixIcon: Icon(CupertinoIcons.add),),
          CupertinoActivityIndicator(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          label: 'fly',
          icon: Icon(CupertinoIcons.airplane)),
        BottomNavigationBarItem(
          label: 'download',
          icon: Icon(CupertinoIcons.arrow_down))
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.name, required this.title}) : super(key: key);

  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Hello $title $name World',
                style: Theme.of(context).textTheme.headline4),
            Text('Hello $name')
          ],
        )
      ),
    );
  }
}

