import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Kerang Ajaib')),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallPage(),
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ball = 1;
  void changeBall () {
    setState(() {
      print('kepencet');
      ball = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  changeBall();
                },
                child: Image.asset('images/ball$ball.png'),
              ),
            ),
        ),
      ],
    );
  }
}

