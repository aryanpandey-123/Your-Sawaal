import 'package:YourSawaal/componet/pages/editprofile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/user.png'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 320, left: 110),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.redAccent,
              child: IconButton(
                iconSize: 15,
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 185),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return edit();
                      },
                    ),
                  );
                },
                color: Colors.redAccent,
                child: Text("Edit")),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 75),
            child: NumbersWidget(),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 350),
          //   child: Column(
          //     children: [
          //       Divider(
          //         height: MediaQuery.of(context).size.height * 0.01,
          //         thickness: 5,
          //         color: Color.fromARGB(96, 158, 158, 158),
          //       ),
          //       Row(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: 10, horizontal: 10),
          //             child: Text(
          //               "Credentials & Highlights",
          //               style: TextStyle(
          //                   fontWeight: FontWeight.bold, fontSize: 20),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.only(left: 100),
          //             child: IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.edit_note_outlined,
          //                   size: 35,
          //                 )),
          //           )
          //         ],
          //       ),
          //       TextButton.icon(
          //           onPressed: () {},
          //           icon: Icon(
          //             Icons.card_travel_rounded,
          //             color: Colors.black,
          //           ),
          //           label: Text(
          //             "Add Employment",
          //             style: TextStyle(color: Colors.black),
          //           )),
          //       TextButton.icon(
          //           onPressed: () {},
          //           icon: Icon(
          //             Icons.school_outlined,
          //             color: Colors.black,
          //           ),
          //           label: Text(
          //             "Add Education",
          //             style: TextStyle(color: Colors.black),
          //           )),
          //       TextButton.icon(
          //           onPressed: () {},
          //           icon: Icon(
          //             Icons.date_range_outlined,
          //             color: Colors.black,
          //           ),
          //           label: Text(
          //             "Joined On date",
          //             style: TextStyle(color: Colors.black),
          //           )),
          //       // Divider(
          //       //   height: MediaQuery.of(context).size.height * 0.01,
          //       //   thickness: 5,
          //       //   color: Color.fromARGB(96, 158, 158, 158),
          //       // ),
          //     ],
          //   ),
          // ),
          // Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 350),
          //       child: Column(
          //         children: [
          //           Divider(
          //             height: MediaQuery.of(context).size.height * 0.01,
          //             thickness: 5,
          //             color: Color.fromARGB(96, 158, 158, 158),
          //           ),
          //           Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.symmetric(
          //                     vertical: 10, horizontal: 10),
          //                 child: Text(
          //                   "Credentials & Highlights",
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.bold, fontSize: 20),
          //                 ),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(left: 100),
          //                 child: IconButton(
          //                     onPressed: () {},
          //                     icon: Icon(
          //                       Icons.edit_note_outlined,
          //                       size: 35,
          //                     )),
          //               )
          //             ],
          //           ),
          //           TextButton.icon(
          //               onPressed: () {},
          //               icon: Icon(
          //                 Icons.card_travel_rounded,
          //                 color: Colors.black,
          //               ),
          //               label: Text(
          //                 "Add Employment",
          //                 style: TextStyle(color: Colors.black),
          //               )),
          //           TextButton.icon(
          //               onPressed: () {},
          //               icon: Icon(
          //                 Icons.school_outlined,
          //                 color: Colors.black,
          //               ),
          //               label: Text(
          //                 "Add Education",
          //                 style: TextStyle(color: Colors.black),
          //               )),
          //           TextButton.icon(
          //               onPressed: () {},
          //               icon: Icon(
          //                 Icons.date_range_outlined,
          //                 color: Colors.black,
          //               ),
          //               label: Text(
          //                 "Joined On date",
          //                 style: TextStyle(color: Colors.black),
          //               )),
          //           // Divider(
          //           //   height: MediaQuery.of(context).size.height * 0.01,
          //           //   thickness: 5,
          //           //   color: Color.fromARGB(96, 158, 158, 158),
          //           // ),
          //         ],
          //       ),
          //     ),
          //     // Padding(
          //     //   padding: const EdgeInsets.only(top: 1),
          //     //   child: DefaultTabController(
          //     //       length: 3,
          //     //       child: Column(children: [
          //     //         TabBar(tabs: [
          //     //           Tab(
          //     //             child: Text(
          //     //               "About",
          //     //               style: TextStyle(
          //     //                   color: Colors.black,
          //     //                   fontWeight: FontWeight.bold),
          //     //             ),
          //     //           ),
          //     //           Tab(
          //     //             child: Text(
          //     //               "Posts",
          //     //               style: TextStyle(
          //     //                   color: Colors.black,
          //     //                   fontWeight: FontWeight.bold),
          //     //             ),
          //     //           ),
          //     //           Tab(
          //     //             child: Text(
          //     //               "Questions",
          //     //               style: TextStyle(
          //     //                   color: Colors.black,
          //     //                   fontWeight: FontWeight.bold),
          //     //             ),
          //     //           )
          //     //         ]),
          //     //       ])),
          //     // )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.redAccent;
    Path path = Path()
      ..relativeLineTo(0, 130)
      ..quadraticBezierTo(size.width / 2, 200, size.width, 130)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '00', 'Posts'),
          buildDivider(),
          buildButton(context, '35', 'Following'),
          buildDivider(),
          buildButton(context, '50', 'Followers'),
        ],
      );
  Widget buildDivider() => Container(
        color: Colors.black,
        height: 15,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
