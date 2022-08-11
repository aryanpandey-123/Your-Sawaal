import 'package:YourSawaal/screens/login.dart';
import 'package:flutter/material.dart';

class newpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: height * 0.15,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.15),
            child: ListView(
              children: [
                Text('New Password',
                    style: TextStyle(
                        fontSize: 39,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: height * 0.1,
                ),
                RoundedPasswordField(
                    onChanged: (value) {}, hinttext: "Enter New Password"),
                RoundedPasswordField(
                    onChanged: (value) {}, hinttext: "Confirm Password"),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundButton(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return login();
                            },
                          ),
                        );
                      },
                      text: 'Submit',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final String text;
  final void Function() press;

  const RoundButton({super.key, required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.orange,
        ]),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(),
        child: FlatButton(
          padding: EdgeInsets.symmetric(),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
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
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 36),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color.fromARGB(125, 242, 194, 190),
        borderRadius: BorderRadius.horizontal(),
      ),
      child: child,
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hinttext;
  const RoundedPasswordField(
      {super.key, required this.onChanged, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: hinttext,
          icon: Icon(
            Icons.lock,
            color: Color.fromARGB(139, 255, 25, 0),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color.fromARGB(139, 255, 25, 0),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
