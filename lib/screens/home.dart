import 'package:YourSawaal/componet/askquestion.dart';
import 'package:YourSawaal/componet/create.dart';
import 'package:YourSawaal/componet/createpost.dart';
import 'package:YourSawaal/componet/pages/answerpage.dart';
import 'package:YourSawaal/componet/postcard.dart';
import 'package:YourSawaal/componet/search.dart';
import 'package:YourSawaal/screens/answer.dart';
import 'package:YourSawaal/screens/following.dart';
import 'package:YourSawaal/screens/notificaton.dart';
import 'package:YourSawaal/screens/profile.dart';
import 'package:YourSawaal/screens/sidebar.dart';
import 'package:YourSawaal/screens/spaces.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  homeState createState() => homeState();
}

class homeState extends State<home> {
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
        title: Text("HOME",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          Row(children: [
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
          ]),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
        child: Column(
          children: [
            Row(
              children: [
                Material(
                    child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          iconSize: 40,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Image.asset("images/user.png"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                        ))),
                const SizedBox(width: 8.0),
                RoundedInputField(
                    hinttext: "What do you want to ask or share?",
                    onChanged: (value) {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => create(
                                    child: askquestionpage(),
                                  )));
                    },
                    icon: const Icon(Icons.quiz_outlined),
                    label: Text("Ask")),
                FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => answerpage()));
                    },
                    icon: const Icon(Icons.drive_file_rename_outline_outlined),
                    label: Text("Answer")),
                FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => create(
                                    child: createpostpage(),
                                  )));
                    },
                    icon: const Icon(Icons.create_outlined),
                    label: Text("Post"))
              ],
            ),
            Divider(
              height: size.height * 0.001,
              thickness: 2.5,
            ),
            Expanded(child: StreamBuilder(
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return ListView.builder(
                  itemBuilder: (context, index) => postcard(),
                );
              },
            )),
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

class nav_bar extends StatefulWidget {
  const nav_bar({super.key});
  @override
  State<StatefulWidget> createState() => _nav_bar();
}

class _nav_bar extends State<nav_bar> {
  // final controller = ScrollController();
  int _currentIndex = 0;
  List<Widget> pages = [
    home(),
    following(),
    answer(),
    spaces(),
    notification(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded), label: "Following"),
            BottomNavigationBarItem(
                icon: Icon(Icons.drive_file_rename_outline), label: "Answer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined), label: "Spaces"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: "Notification")
          ],
          // controller: controller,
        ));
  }
}
