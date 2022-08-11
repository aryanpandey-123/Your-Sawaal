import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

class delayscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<delayscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset("images/logo.png"),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "Namaste",
                // ignore: unnecessary_const
                style: const TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
            ],
          ),
        ));
  }
}
