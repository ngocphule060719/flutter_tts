import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/registration.dart';
import 'package:flutter_tts/widget/button_text.dart';
import 'package:flutter_tts/widget/dialog.dart';
import 'package:flutter_tts/widget/text_field.dart';
import 'dart:io';
import 'package:email_validator/email_validator.dart';

class LoginPasswordScreen extends StatefulWidget {
  const LoginPasswordScreen({Key? key}) : super(key: key);

  @override
  State<LoginPasswordScreen> createState() => _LoginPasswordScreenState();
}

class _LoginPasswordScreenState extends State<LoginPasswordScreen> {
  final _myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _myController.dispose();
    super.dispose();
  }

  bool internetConnected = true;

  Future CheckUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          internetConnected = true;
        });
      }
    } on SocketException catch (_) {
      setState(() {
        internetConnected = false;
      });
    }
  }

  @override
  void initState() {
    CheckUserConnection();
    super.initState();
  }

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
                  child: Text(
                    textAlign: TextAlign.center,
                    'パスワードリセットのメールをお送りしますので\nメールアドレスをご入力ください',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
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
                    tfController: _myController,
                    cHeight: sheight * 60 / 812,
                    cWidth: swidth * 329 / 375,
                    passwordTextField: false,
                    inBorder: const OutlineInputBorder(),
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
                      String inputEmail = _myController.text;
                      bool isEmail = EmailValidator.validate(inputEmail);
                      if (isEmail == true) {
                        CheckUserConnection();
                        return internetConnected
                            ? showDialog(
                                context: context,
                                builder: (BuildContext context) => PopUpDialog(
                                  desRoute: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationScreen(
                                                  emailAddress: inputEmail,
                                                )));
                                  },
                                  contentDialog: '',
                                  titleDialog: 'パスワード変更が完了しました！',
                                  isContent: false,
                                ),
                                barrierDismissible: true,
                              )
                            : showDialog(
                                context: context,
                                builder: (BuildContext context) => PopUpDialog(
                                    desRoute: () {
                                      Navigator.pop(context);
                                    },
                                    isContent: true,
                                    titleDialog: 'エラー',
                                    contentDialog:
                                        'インターネット接続を確認してもう一度実行してください'),
                                barrierDismissible: true,
                              );
                      } else {
                        print('wrong email!');
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
