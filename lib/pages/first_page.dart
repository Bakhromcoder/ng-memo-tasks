

import 'package:flutter/material.dart';
import 'package:task_ngdemo_2/pages/second_page.dart';
class FirstPage extends StatefulWidget {
  static const String id = 'first_page';

  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
             Container(height: 100,),
            Container(
              padding: const EdgeInsets.all(20),
              height: 80,
              //color: Colors.green,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.navigate_before),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SecondPage.id);
                  },
                  child: const Icon(Icons.navigate_next),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
