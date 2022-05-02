import 'package:flutter/material.dart';
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
        primarySwatch: Colors.brown,
      ),
      // home: const JuwonHomePage(),
      home: const MultipleWidgetPage(),
    );
  }
}


