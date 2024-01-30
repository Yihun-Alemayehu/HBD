import 'package:flutter/material.dart';
import 'package:flutter_audio_recorder2/flutter_audio_recorder2.dart';

void main() async{
  bool hasPermission = await FlutterAudioRecorder2.hasPermissions;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double flameHeight = 50.0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Candle'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // You can add more interactivity here if needed
          },
          child: Container(
            width: 50.0,
            height: 150.0,
            color: Colors.amber,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: flameHeight,
              width: 50.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
