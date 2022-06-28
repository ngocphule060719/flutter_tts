import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/welcome.dart';

import '../widget/button_back.dart';
import '../widget/button_text.dart';
import '../widget/text_field.dart';

class RegistrationScreen extends StatefulWidget {
  late String emailAddress;

  RegistrationScreen({required this.emailAddress});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _myController1 = TextEditingController();
  final _myController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _myController1.dispose();
    _myController2.dispose();
    super.dispose();
  }

  bool isMatched = false;
  Color textColor = Colors.white;
  String notificationUnMatched = 'パスワードが一致しません';

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SizedBox(
        width: swidth,
        height: sheight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: sheight * 44 / 812,
            ),
            SizedBox(
              width: swidth * 49 / 375,
              height: sheight * 44 / 812,
              child: ButtonBack(
                tapBack: () {
                  print('back!');
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 24 / 812,
            ),
            Container(
              width: swidth,
              //height: sheight * 44 / 812,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${widget.emailAddress}\nパスワードを確認してください',
                  //youremail@gmail.com Please check your password
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 54 / 812,
            ),
            Container(
              padding: EdgeInsets.only(left: swidth * 25 / 375),
              width: swidth,
              height: sheight * 40 / 812,
              child: TextFieldCustom(
                tfController: _myController1,
                cHeight: sheight * 40 / 812,
                cWidth: swidth * 325 / 375,
                hintT: 'パスワードを入力してください', //Please enter your password
                hintColor: Colors.grey,
                tColor: Colors.black,
                tSize: 15,
                passwordTextField: true,
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 24 / 812,
            ),
            Container(
              padding: EdgeInsets.only(left: swidth * 25 / 375),
              width: swidth,
              height: sheight * 40 / 812,
              child: TextFieldCustom(
                tfController: _myController2,
                cHeight: sheight * 40 / 812,
                cWidth: swidth * 325 / 375,
                hintT: 'もう一度パスワードを入力してください', //Please enter your password again
                hintColor: Colors.grey,
                tColor: Colors.black,
                tSize: 15,
                passwordTextField: true,
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 24 / 812,
            ),
            Container(
              width: swidth,
              height: sheight * 16 / 812,
              padding: EdgeInsets.only(left: swidth * 25 / 375),
              child: Text(
                notificationUnMatched,
                style: TextStyle(
                    color: textColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 54 / 812,
            ),
            Container(
              width: swidth * 343 / 375,
              height: sheight * 46 / 812,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: ButtonWithText(
                bHeight: sheight * 46 / 812,
                bWidth: swidth * 343 / 375,
                bText: '次へ', //to the next
                fTap: () {
                  if (_myController1.text == _myController2.text) {
                    setState(() {
                      isMatched = true;
                      textColor = Colors.white;
                    });
                    print('to the next');
                    String _userName = widget.emailAddress.split('@')[0];
                    print('user name: ' + _userName);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen(
                                  userName: _userName,
                                )));
                  } else {
                    print('is not matched!');
                    setState(() {
                      isMatched = false;
                      textColor = Colors.red;
                    });
                  }
                },
                bColor: Color.fromRGBO(29, 32, 136, 1),
                tColor: Colors.white,
                tSize: 17,
                fWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      )),
    );
  }
}
