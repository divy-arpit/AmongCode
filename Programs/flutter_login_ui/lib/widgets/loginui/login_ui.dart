import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/circle-cropped.png"),
            //email
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: TextField(
                cursorColor: Colors.grey,
                keyboardAppearance: Brightness.dark,
                style: TextStyle(
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            //Password
            TextField(
              cursorColor: Colors.grey,
              keyboardAppearance: Brightness.dark,
              style: TextStyle(
                color: Colors.grey,
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                ),
                hintText: "Passcode",
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: RaisedButton(
                  onPressed: () {},
                  color: Colors.grey,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Are you a newbie?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                FlatButton(
                  minWidth: 20,
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.yellow[800],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
