import 'package:flutter/material.dart';
import 'package:task_ngdemo_2/pages/fourth_page.dart';
import 'package:task_ngdemo_2/pages/second_page.dart';

class ThirdPage extends StatefulWidget {
  static const String id = 'third_page';

  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.deepPurple,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 500,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, SecondPage.id);
                    },
                    child: Icon(Icons.navigate_before)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, FourthPage.id);
                    },
                    child: Icon(Icons.navigate_next))
              ],
            )
          ],
        ),
      ),
    );
  }
}
