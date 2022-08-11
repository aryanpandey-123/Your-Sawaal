import 'package:YourSawaal/screens/new_pass.dart';
import 'package:YourSawaal/screens/otp.dart';
import 'package:flutter/material.dart';

class forgotpass extends StatelessWidget {
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
              children: [
                Text('Forgot Password?',
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
                    "Enter the email or phone number associated\n with your account.",
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
                RoundedInputField(
                  hinttext: 'Email or Phone Number',
                  icon: Icons.person,
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return otp();
                            },
                          ),
                        );
                      },
                      text: 'Send',
                    ),
                    RoundButton(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return newpassword();
                            },
                          ),
                        );
                      },
                      text: 'Next',
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
