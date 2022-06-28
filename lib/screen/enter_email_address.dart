import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/registration.dart';
import 'package:flutter_tts/widget/button_back.dart';
import 'package:flutter_tts/widget/text_field.dart';
import 'package:flutter_tts/widget/button_text.dart';
import 'package:email_validator/email_validator.dart';

class EnterEmailAddressScreen extends StatefulWidget {
  const EnterEmailAddressScreen({Key? key}) : super(key: key);

  @override
  State<EnterEmailAddressScreen> createState() =>
      _EnterEmailAddressScreenState();
}

class _EnterEmailAddressScreenState extends State<EnterEmailAddressScreen> {
  final _myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
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
                //height: sheight * 22 / 812,
                padding: EdgeInsets.only(left: swidth * 16 / 375),
                child: const Text(
                  'メールアドレスを入力してください', //Please enter your e-mail address
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 24 / 812,
              ),
              Container(
                width: swidth,
                //height: sheight * 18 / 812,
                padding: EdgeInsets.only(left: swidth * 16 / 375),
                child: const Text(
                  '登録したメールアドレスに確認コードをお送りします。', //A confirmation code will be sent to the registered email address.
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 117 / 812,
              ),
              Container(
                padding: EdgeInsets.only(left: swidth * 25 / 375),
                width: swidth,
                height: sheight * 40 / 812,
                child: TextFieldCustom(
                  tfController: _myController,
                  cHeight: sheight * 40 / 812,
                  cWidth: swidth * 325 / 375,
                  hintT: 'メールアドレスを入力', //Enter your email address
                  hintColor: Colors.grey,
                  tColor: Colors.black,
                  tSize: 22,
                  passwordTextField: false,
                ),
              ),
              SizedBox(
                width: swidth,
                height: sheight * 24 / 812,
              ),
              Container(
                width: swidth * 343 / 375,
                height: sheight * 46 / 812,
                padding: EdgeInsets.only(left: swidth * 16 / 375),
                child: ButtonWithText(
                  bHeight: sheight * 46 / 812,
                  bWidth: swidth * 343 / 375,
                  bText: '確認メールを送信', //Send confirmation email
                  fTap: () {
                    bool isEmail = EmailValidator.validate(_myController.text);
                    isEmail
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()))
                        : print('wrong email!');
                  },
                  bColor: Color.fromRGBO(29, 32, 136, 1),
                  tColor: Colors.white,
                  tSize: 17,
                  fWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
