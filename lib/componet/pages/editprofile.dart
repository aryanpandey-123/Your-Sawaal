import 'package:flutter/material.dart';

class edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              TextButton(
                  onPressed: () {},
                  child: Text("Edit name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              SizedBox(width: 212),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit))
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              TextButton(
                  onPressed: () {},
                  child: Text("Edit bio",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              SizedBox(width: 235),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit))
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              TextButton(
                  onPressed: () {},
                  child: Text("Edit profile credentials",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              SizedBox(width: 100),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit))
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
