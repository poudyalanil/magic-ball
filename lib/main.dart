import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Magic Ball"),
        ),
        body: answerPage(),
      ),
    );
  }
}
class answerPage extends StatefulWidget {
  @override
  _answerPageState createState() => _answerPageState();
}

class _answerPageState extends State<answerPage> {
  @override
  Widget build(BuildContext context) {
    int imageCode=Random().nextInt(4)+1;
    void randomFaces(){
      imageCode = Random().nextInt(4)+1;
    }
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              bottom: 10.0,
            ),
            child: Text("Ask yourself a question",
              style:TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),


          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Text('and tap on the answer',
              style: TextStyle(
                color: Colors.white,

              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child:FlatButton(onPressed: (){
                    setState(() {
                      randomFaces();
                    });
                  }, child: Image.asset('images/ball$imageCode.png')
                  ),


              )
            ],
          ),
        ],
      ),
    );
  }
}
