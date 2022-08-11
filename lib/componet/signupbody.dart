import 'package:flutter/material.dart';
import 'package:YourSawaal/screens/login.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../screens/home.dart';

class signupbody extends StatefulWidget {
  const signupbody({super.key});

  @override
  signupstate createState() => signupstate();
}

class signupstate extends State<signupbody> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  bool isAPIcallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? fname;
  String? lname;
  String? email;
  String? password;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ProgressHUD(
        inAsyncCall: isAPIcallProcess,
        key: UniqueKey(),
        child: Form(key: globalFormKey, child: _signupUI(context)),
      ),
    ));
  }

  Widget _signupUI(BuildContext context) {
    return Container(
        key: scaffoldkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset("images/logo2.png"),
            ),
            SizedBox(
              height: 60,
            ),
            FormHelper.inputFieldWidget(context, "fname", "First Name",
                (onValidateVal) {
              if (onValidateVal.isEmpty) {
                return "Name can not be Empty.";
              }
              return null;
            }, (onSavedVal) {
              fname = onSavedVal;
            },
                prefixIcon: Icon(Icons.person),
                showPrefixIcon: true,
                hintColor: Colors.black.withOpacity(0.7),
                borderRadius: 10),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: FormHelper.inputFieldWidget(context, "lname", "Last Name",
                  (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return "Name can not be Empty.";
                }
                return null;
              }, (onSavedVal) {
                lname = onSavedVal;
              },
                  prefixIcon: Icon(Icons.person),
                  showPrefixIcon: true,
                  hintColor: Colors.black.withOpacity(0.7),
                  borderRadius: 10),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FormHelper.inputFieldWidget(
                  context,
                  "email",
                  "Email Address",
                  (input) =>
                      !input.contains('@') ? "Email Id should be valid" : null,
                  (onSavedVal) {
                email = onSavedVal;
              },
                  prefixIcon: Icon(Icons.person),
                  showPrefixIcon: true,
                  hintColor: Colors.black.withOpacity(0.7),
                  borderRadius: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FormHelper.inputFieldWidget(
                context,
                "password",
                "Password",
                (input) => input.length < 3
                    ? "Password should be more than 3 characters"
                    : null,
                (onSavedVal) {
                  password = onSavedVal;
                },
                prefixIcon: Icon(Icons.lock),
                showPrefixIcon: true,
                hintColor: Colors.black.withOpacity(0.7),
                borderRadius: 10,
                obscureText: hidePassword,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    color: Colors.red.withOpacity(0.7),
                    icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility,
                    )),
              ),
            ),
            RoundButton(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const nav_bar()),
                );
              },
              text: 'Signup',
            ),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return login();
                      },
                    ),
                  );
                }),
          ],
        ));
  }

  bool validateandsave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
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
      margin: EdgeInsets.symmetric(vertical: 10),
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
          padding: EdgeInsets.symmetric(vertical: 20),
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

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() press;

  const AlreadyHaveAnAccountCheck(
      {super.key, this.login = true, required this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ?" : "Already have an Account ?",
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: press,
          child: Text(login ? "Sign up" : "Sign in",
              style: TextStyle(
                  color: Color.fromARGB(139, 255, 25, 0),
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
