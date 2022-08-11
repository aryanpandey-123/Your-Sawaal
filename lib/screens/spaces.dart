import 'package:YourSawaal/componet/pages/space_create.dart';
import 'package:YourSawaal/componet/search.dart';
import 'package:YourSawaal/componet/spacescard.dart';
import 'package:YourSawaal/screens/sidebar.dart';
import 'package:flutter/material.dart';

class spaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
        title: Text("Spaces",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
                showSearch(context: context, delegate: search());
              })
        ],
      ),
      body: Column(
        children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  "Your Spaces",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down_outlined),
                  label: Text("Recently Visited")),
            )
          ]),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        textStyle: TextStyle(fontSize: 15),
                        primary: Colors.red,
                        side: BorderSide(width: 1.5, color: Colors.red),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    onPressed: () {},
                    child: FlatButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return space_create();
                              },
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.red,
                        ),
                        label: Text(
                          "Create",
                          style: TextStyle(color: Colors.red),
                        ))),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 115),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      textStyle: TextStyle(fontSize: 15),
                      primary: Colors.red,
                      side: BorderSide(width: 1.5, color: Colors.red),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  onPressed: () {},
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.assistant_navigation,
                        color: Colors.red,
                      ),
                      label: Text(
                        "Discover",
                        style: TextStyle(color: Colors.red),
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: StreamBuilder(
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return ListView.builder(
                // itemCount: 5,
                itemBuilder: (context, index) => spacescard(),
              );
            },
          )),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 5,
            thickness: 2,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Discover Spaces",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: StreamBuilder(
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return ListView.builder(
                // itemCount: 5,
                itemBuilder: (context, index) => spacescard(),
              );
            },
          )),
        ],
      ),
    );
  }
}
