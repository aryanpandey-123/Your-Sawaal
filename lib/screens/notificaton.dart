import 'package:YourSawaal/componet/notificationcard.dart';
import 'package:YourSawaal/componet/search.dart';
import 'package:YourSawaal/screens/sidebar.dart';
import 'package:flutter/material.dart';

class notification extends StatelessWidget {
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
        title: Text("Notification",
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
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 8.0, 0.0, 0.0),
                height: 48,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Mark All As Read',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: size.width * 0.405,
                        ),
                        IconButton(
                            icon: Icon(Icons.settings_input_component_outlined),
                            color: Colors.black,
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.settings_outlined),
                            color: Colors.black,
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: size.height * 0.001,
              thickness: 2.5,
            ),
            Expanded(child: StreamBuilder(
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return ListView.builder(
                  itemBuilder: (context, index) => notificationcard(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hinttext;
  final ValueChanged<String> onChanged;

  const RoundedInputField(
      {super.key, required this.hinttext, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration:
            InputDecoration(hintText: hinttext, border: InputBorder.none),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.8,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        color: Color.fromARGB(76, 153, 153, 153),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
