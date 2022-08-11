// ignore: file_names
import 'package:YourSawaal/componet/pages/question.dart';
import 'package:flutter/material.dart';

class foryou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return ListView.builder(
            itemBuilder: (context, index) => question(),
          );
        },
      ),
    );
  }
}
