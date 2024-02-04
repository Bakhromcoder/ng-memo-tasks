import 'package:flutter/material.dart';
import 'package:task_ngdemo_2/pages/fifth_page.dart';
import 'package:task_ngdemo_2/pages/third_page.dart';

class FourthPage extends StatefulWidget {
  static const String id = 'fourth_page';

  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Flutter Demo Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.deepPurple,
          ),
          Container(
            height: 100,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.green,
                )),
                Expanded(
                    child: Container(
                  color: Colors.orange,
                ))
              ],
            ),
          ),
          Container(
            height: 100,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                Expanded(
                  child: Container(
                    color: Colors.blue,
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
                  onPressed: () {
                    Navigator.pop(context, ThirdPage.id);
                  },
                  child: Icon(Icons.navigate_before)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, FifthPage.id);
                  },
                  child: Icon(Icons.navigate_next)),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
