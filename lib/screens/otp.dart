import 'package:YourSawaal/screens/forgotpass.dart';
import 'package:flutter/material.dart';

class otp extends StatelessWidget {
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
            margin: EdgeInsets.only(top: height * 0.2),
            child: ListView(
              children: <Widget>[
                Text('Varification',
                    style: TextStyle(
                        fontSize: 39,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: height * 0.015,
                ),
                Center(
                  child: Text(
                    "Enter the varification code we have just\n sent you.",
                    style: TextStyle(
                        fontSize: 14.5,
                        fontFamily: 'Cairo',
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                RoundedPasswordField(onChanged: (value) {}),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text(
                        "Verify Code",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Cairo',
                            color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    RoundButton(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return forgotpass();
                            },
                          ),
                        );
                      },
                      text: 'Next',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => otp()));
                    },
                    child: Text(
                      "Resend Code?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.red,
                          letterSpacing: 1.7),
                    ),
                  ),
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
      width: size.width * 0.25,
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

class RoundedInputField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField(
      {super.key,
      required this.hinttext,
      required this.icon,
      required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Color.fromARGB(139, 255, 25, 0),
            ),
            hintText: hinttext,
            border: InputBorder.none),
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

  const RoundedPasswordField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Code",
          icon: Icon(
            Icons.lock,
            color: Color.fromARGB(139, 255, 25, 0),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
