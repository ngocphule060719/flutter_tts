import 'package:flutter/material.dart';

import '../widget/button_text_icon.dart';

class LoginLoginScreen extends StatelessWidget {
  const LoginLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: swidth,
        height: sheight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              width: swidth,
              height: sheight * 24 / 812,
            ),
            BottomText(swidth, sheight * 20 / 812, () {
              print('register'); //register
            })
          ],
        ),
      ),
    );
  }

  Widget BottomText(double tWidth, double tHeight, Function tTap) {
    return Container(
      color: Colors.white,
      width: tWidth,
      height: tHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Text(
              'アカウントをお持ちでない場合登録は ', //If you do not have an account, you can register
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
          ),
          SizedBox(
            child: GestureDetector(
              onTap: () {
                tTap;
              },
              child: const Text(
                'こちら', //Here
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
