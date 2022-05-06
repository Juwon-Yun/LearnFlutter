import 'dart:ui';

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
      appBar: AppBar(),
      body: Column(
        children: [
         Image.asset('assets/image/image011.jpeg'),
          Image.asset('assets/image/imagegif001.gif')
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

