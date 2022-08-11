import 'package:YourSawaal/screens/spaces_screen.dart';
import 'package:flutter/material.dart';

class spacescard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListTile(
        title: Text(
          "Group Name",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ProfileScreen();
              },
            ),
          );
        },
      ),
    );
  }
}
