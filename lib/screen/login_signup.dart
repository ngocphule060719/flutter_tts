import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/button_text_icon.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          width: swidth,
          height: sheight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: swidth,
                height: sheight * 2 / 5,
              ),
              Image.asset(
                'images/ookini_logo_1.png',
                width: 202,
                height: 55,
              ),
              SizedBox(
                width: swidth,
                height: sheight * 77 / 812,
              ),
              SizedBox(
                width: swidth * 342 / 375,
                height: 46,
                child: ButtonWithTextAndIcon(
                  bHeight: 46,
                  bWidth: swidth * 342 / 375,
                  bText: 'Googleで始める', //Start with Google
                  bIcon: 'images/gg_icon.png',
                  fTap: () {
                    print('Googleで始める');
                  },
                  borderColor: Colors.blue,
                  tColor: Colors.blue,
                  tSize: 14,
                  fWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 16 / 812,
              ),
              SizedBox(
                width: swidth * 342 / 375,
                height: 46,
                child: ButtonWithTextAndIcon(
                  bHeight: 46,
                  bWidth: swidth * 342 / 375,
                  bText: 'Facebookで始める', //Start with Facebook
                  bIcon: 'images/fb_icon.png',
                  fTap: () {
                    print('Facebookで始める');
                  },
                  bColor: Color.fromRGBO(51, 121, 234, 1),
                  tSize: 14,
                  fWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 16 / 812,
              ),
              SizedBox(
                width: swidth * 342 / 375,
                height: 46,
                child: ButtonWithTextAndIcon(
                  bHeight: 46,
                  bWidth: swidth * 342 / 375,
                  bText: 'Appleで始める', //Start with Apple
                  bIcon: 'images/apple_icon.png',
                  fTap: () {
                    print('Appleで始める');
                  },
                  bColor: Colors.black,
                  tSize: 14,
                  fWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 16 / 812,
              ),
              SizedBox(
                width: swidth * 342 / 375,
                height: 46,
                child: ButtonWithTextAndIcon(
                  bHeight: 46,
                  bWidth: swidth * 342 / 375,
                  bText: 'メールアドレスで始める', //Start with Email
                  bIcon: 'images/mail_icon.png',
                  fTap: () {
                    print('メールアドレスで始める');
                  },
                  bColor: Color.fromRGBO(29, 32, 136, 1),
                  tSize: 14,
                  fWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: swidth * 249 / 375,
                height: sheight * 24 / 812,
              ),
              BottomText(swidth * 249 / 375, sheight * 20 / 812, () {
                print('ログイン'); //sign in
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget BottomText(double tWidth, double tHeight, Function tTap) {
    return Container(
      color: Colors.white,
      width: tWidth,
      height: tHeight,
      child: Stack(
        children: <Widget>[
          const Positioned(
            left: 0,
            child: Text(
              'すでにアカウントがある場合', //If you already have an account
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: () {
                tTap;
              },
              child: const Text(
                'ログイン', //Login
                style: TextStyle(
                    color: Color.fromRGBO(29, 32, 136, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
