
import 'package:flutter/material.dart';

import 'package:task_ngdemo_2/pages/first_page.dart';
import 'package:task_ngdemo_2/pages/third_page.dart';
class SecondPage extends StatefulWidget {
  static const String id = 'second_page';

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(height: 100,),
          Container(
            height: 50,
            width: 400,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            width: 400,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            width: 400,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            width: 400,
            color: Colors.green,
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, FirstPage.id);
                },
                child: const Icon(Icons.navigate_before),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ThirdPage.id);
                },
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}