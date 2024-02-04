import 'package:flutter/material.dart';
import 'package:task_ngdemo_2/pages/fifth_page.dart';
import 'package:task_ngdemo_2/pages/first_page.dart';
import 'package:task_ngdemo_2/pages/fourth_page.dart';
import 'package:task_ngdemo_2/pages/second_page.dart';
import 'package:task_ngdemo_2/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        FirstPage.id: (context) => FirstPage(),
        SecondPage.id: (context) => SecondPage(),
        ThirdPage.id: (context) => ThirdPage(),
        FourthPage.id: (context) => FourthPage(),
        FifthPage.id: (context) => FifthPage(),
      },
      home: const FirstPage(),
    );
  }
}

