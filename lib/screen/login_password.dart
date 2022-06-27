import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/button_text.dart';
import 'package:flutter_tts/widget/text_field.dart';

class LoginPasswordScreen extends StatelessWidget {
  const LoginPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: null,
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              width: swidth,
              height: sheight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: swidth,
                    height: sheight * 253 / 812,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: swidth * 202 / 375,
                    height: sheight * 55 / 812,
                    child: Image.asset('images/ookini_logo_1.png'),
                  ),
                  SizedBox(
                    width: swidth,
                    height: sheight * 29 / 812,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: swidth * 293 / 375,
                    height: sheight * 48 / 812,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'パスワードリセットのメールをお送りしますので\nメールアドレスをご入力ください',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: swidth,
                    height: sheight * 36 / 812,
                  ),
                  SizedBox(
                    width: swidth * 329 / 375,
                    height: sheight * 60 / 812,
                    child: TextFieldCustom(
                      cHeight: sheight * 60 / 812,
                      cWidth: swidth * 329 / 375,
                      passwordTextField: false,
                      inBorder: OutlineInputBorder(),
                      lText: 'メールアドレス', // email address
                      lSize: 12,
                      hintT: 'info@datainsight.jp',
                      hintColor: Colors.grey,
                      tColor: Colors.black,
                      fWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: swidth,
                    height: sheight * 29 / 812,
                  ),
                  SizedBox(
                    width: swidth * 343 / 375,
                    height: sheight * 46 / 812,
                    child: ButtonWithText(
                      bHeight: sheight * 46 / 812,
                      bWidth: swidth * 343 / 375,
                      tColor: Colors.white,
                      tSize: 14,
                      fWeight: FontWeight.bold,
                      bColor: Color.fromRGBO(29, 32, 136, 1),
                      bText: '送信', // send
                      fTap: () {
                        print('send');
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
