import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/login_login.dart';
import 'package:flutter_tts/screen/login_signup.dart';
import '../widget/button_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        width: swidth,
        height: sheight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: sheight * 378 / 812,
            ),
            Image.asset(
              'images/ookini_logo_1.png',
              width: 202,
              height: 55,
            ),
            SizedBox(
              width: swidth,
              height: sheight * 201 / 812,
            ),
            SizedBox(
              width: 60,
              height: 6,
              child: RowOf4Circle(),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 11 / 812,
            ),
            SizedBox(
              width: swidth * 342 / 375,
              height: 46,
              child: ButtonWithText(
                bWidth: swidth * 342 / 375,
                bHeight: 46,
                fTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginSignUpScreen()));
                },
                bText: '新しく始める（無料）', //Start anew (free)
                bColor: Color.fromRGBO(29, 32, 136, 1),
                tSize: 17,
                fWeight: FontWeight.bold,
                tColor: Colors.white,
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 19 / 812,
            ),
            SizedBox(
              width: swidth * 342 / 375,
              height: sheight * 46 / 812,
              child: ButtonWithText(
                bWidth: swidth * 342 / 375,
                bHeight: 46,
                fTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginLoginScreen()));
                },
                bText:
                    'すでに登録されている方はこちら', //Click here if you are already registered
                tColor: Color.fromRGBO(29, 32, 136, 1),
                tSize: 17,
                fWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget RowOf4Circle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 37.png'),
        ),
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 40.png'),
        ),
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 40.png'),
        ),
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 40.png'),
        ),
      ],
    );
  }
}
