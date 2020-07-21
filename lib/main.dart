import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
            title: Text('URLApp'),
        ),

        body: Container(
            child: Center(
              child: RaisedButton(
                onPressed: ()async{
                  const url = 'https://www.facebook.com/thatzsayem';

                  if(await canLaunch(url)){
                    await launch(url);
                  }else{
                    throw 'Could not launch $url';
                  }
                },
                child: Text("Gandd"),
              ),
            ),
        ),
      ),
    );
  }
}

