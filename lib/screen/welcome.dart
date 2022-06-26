import 'package:flutter/material.dart';

import '../widget/button_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isChecked = false;
  Color bColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: swidth,
        height: sheight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: sheight * 112 / 812,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: swidth,
              //height: sheight * 22 / 812,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: Text(
                'Ookini! にようこそ', //Welcome to Ookini!
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 27 / 812,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: swidth,
              //height: sheight * 18 / 812,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: Text(
                'xxx',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 189 / 812,
            ),
            Container(
              width: swidth,
              //height: sheight * 41 / 812,
              padding: EdgeInsets.only(
                  left: swidth * 16 / 375, right: swidth * 16 / 375),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: swidth * 41 / 375,
                    height: sheight * 41 / 812,
                    child: Checkbox(
                      activeColor: bColor,
                      value: isChecked,
                      onChanged: (bool? newCheck) {
                        Color? newColor;
                        if (newCheck == true) {
                          newColor = Color.fromRGBO(29, 32, 136, 1);
                        } else {
                          newColor = Colors.grey;
                        }
                        setState(() {
                          isChecked = newCheck!;
                          bColor = newColor!;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: swidth * 302 / 375,
                    padding: EdgeInsets.only(left: swidth * 8 / 375),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ookini! の利用規約、プライバシーポリシー、ガイドラインにも同意します。',
                          //I also agree to Ookini!'S Terms of Service, Privacy Policy and Guidelines.
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sheight * 299 / 812,
              width: swidth,
            ),
            Container(
              color: Colors.white,
              width: swidth,
              height: sheight * 46 / 812,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: swidth * 98 / 375),
              child: ButtonWithText(
                bWidth: swidth * 179 / 375,
                bHeight: sheight * 46 / 812,
                bText: '次へ', //to the next
                fTap: () {
                  if (isChecked == true) {
                    print('to the next');
                  }
                },
                bColor: bColor,
                tColor: Colors.white,
                tSize: 17,
                fWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
