import 'package:flutter/material.dart';

void main() {
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
  MicrophoneRecorder _recorder;

  @override
  void initState() {
    super.initState();
    _initMicrophone();
  }

  Future<void> _initMicrophone() async {
    _recorder = MicrophoneRecorder()..initialize();
    _recorder.start();
  }

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

  @override
  void dispose() {
    _recorder?.stop();
    super.dispose();
  }
}
