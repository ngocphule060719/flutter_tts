import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/button_text.dart';
import 'package:flutter_tts/widget/text_field.dart';

class LoginLogin2Screen extends StatefulWidget {
  const LoginLogin2Screen({Key? key}) : super(key: key);

  @override
  State<LoginLogin2Screen> createState() => _LoginLogin2ScreenState();
}

class _LoginLogin2ScreenState extends State<LoginLogin2Screen> {
  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          width: swidth,
          height: sheight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: swidth,
                height: sheight * 253 / 812,
              ),
              SizedBox(
                width: swidth,
                height: sheight * 55 / 812,
                child: Image.asset('images/ookini_logo_1.png'),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 46 / 812,
              ),
              Container(
                width: swidth,
                height: sheight * 65 / 812,
                padding: EdgeInsets.only(
                    left: swidth * 24 / 375, right: swidth * 24 / 375),
                child: TextFieldCustom(
                  cHeight: sheight * 65 / 812,
                  cWidth: swidth * 327 / 375,
                  hintT: 'info@datainsight.jp',
                  tSize: 16,
                  fWeight: FontWeight.normal,
                  lText: 'メールアドレス', //email address
                  lSize: 12,
                  inBorder: OutlineInputBorder(),
                  passwordTextField: false,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 8 / 812,
              ),
              Container(
                width: swidth,
                height: sheight * 65 / 812,
                padding: EdgeInsets.only(
                    left: swidth * 24 / 375, right: swidth * 24 / 375),
                child: TextFieldCustom(
                  cHeight: sheight * 65 / 812,
                  cWidth: swidth * 327 / 375,
                  hintT: 'パスワード', //password
                  tSize: 16,
                  fWeight: FontWeight.normal,
                  lText: 'パスワード', //password
                  lSize: 12,
                  inBorder: OutlineInputBorder(),
                  passwordTextField: true,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 24 / 812,
              ),
              Container(
                alignment: Alignment.center,
                width: swidth * 343 / 375,
                height: sheight * 46 / 812,
                child: ButtonWithText(
                  bHeight: sheight * 46 / 812,
                  bWidth: swidth * 343 / 375,
                  fTap: () {},
                  bText: 'ログイン', //Login
                  tSize: 14,
                  bColor: Color.fromRGBO(29, 32, 136, 1),
                  fWeight: FontWeight.bold,
                  tColor: Colors.white,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 12 / 812,
              ),
              SizedBox(
                width: swidth * 253 / 375,
                height: sheight * 24 / 812,
                child: BottomText1(swidth * 253 / 375, sheight * 24 / 812, () {
                  print('forgot password');
                }),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 160 / 812,
              ),
              SizedBox(
                width: swidth * 301 / 375,
                height: sheight * 20 / 812,
                child: BottomText2(swidth * 301 / 375, sheight * 20 / 812, () {
                  print('register');
                }),
              )
            ],
          ),
        )),
      ),
    );
  }

  Widget BottomText1(double tWidth, double tHeight, Function tTap) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: tWidth,
        height: tHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Text(
                'パスワードを忘れてしまった場合は ', //if you have forgotten your password
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
      ),
    );
  }

  Widget BottomText2(double tWidth, double tHeight, Function tTap) {
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
