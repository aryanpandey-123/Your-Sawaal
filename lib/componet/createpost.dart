import 'package:flutter/material.dart';

class createpostpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 8.0),
                    ],
                  ),
                  RoundedInputField(hinttext: "Say Something..."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hinttext;

  const RoundedInputField({super.key, required this.hinttext});
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
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: size.width * 0.92,
      height: size.height * 0.1,
      child: child,
    );
  }
}
