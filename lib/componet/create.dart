import 'package:YourSawaal/componet/askquestion.dart';
import 'package:YourSawaal/componet/createpost.dart';
import 'package:flutter/material.dart';

class create extends StatelessWidget {
  final Widget child;
  const create({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          actions: [
            FlatButton(
                onPressed: () {},
                child: Text("Add",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)))
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                "Ask Question",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "Create Post",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        body: TabBarView(children: [
          askquestionpage(),
          createpostpage(),
        ]),
      ),
    );
  }
}
