import 'package:flutter/material.dart';
import 'package:task_ngdemo_2/pages/first_page.dart';
import 'package:task_ngdemo_2/pages/fourth_page.dart';

class FifthPage extends StatefulWidget {
  static const String id = 'fifth_page';

  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
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
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             ElevatedButton(onPressed: (){
               Navigator.pop(context, FourthPage.id);
             }, child: Icon(Icons.navigate_before),),
             ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, FirstPage.id);
             }, child: Icon(Icons.navigate_next))
           ],
         ),
          SizedBox(height: 30,)

        ],
      ),
    );
  }
}
