import 'package:YourSawaal/componet/askquestion.dart';
import 'package:YourSawaal/componet/create.dart';
import 'package:YourSawaal/componet/pages/Foryou.dart';
import 'package:YourSawaal/componet/pages/answerdrafts.dart';
import 'package:YourSawaal/componet/pages/requests.dart';
import 'package:YourSawaal/componet/search.dart';
import 'package:YourSawaal/screens/sidebar.dart';
import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: sidebar(),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: Builder(
              builder: (context) => Container(
                    child: Material(
                        child: Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: Image.asset("images/user.png"),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                            ))),
                  )),
          title: Text("Answers",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  showSearch(context: context, delegate: search());
                }),
            IconButton(
                icon: Icon(Icons.add_circle_outline_outlined),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => create(
                                child: askquestionpage(),
                              )));
                }),
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                "For you",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "Requests",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "Answer Drafts",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        body: TabBarView(children: [foryou(), requests(), answerdrafts()]),
      ),
    );
  }
}
