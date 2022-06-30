import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/text_field.dart';

class UserRegistration extends StatelessWidget {
  final String appBarTitle = 'ユーザー登録';
  final Color bgColor = Colors.white;
  final Color textColorDefault = Colors.black;
  final Color btnBgColor = const Color.fromRGBO(232, 233, 243, 1);
  final Color camBgColor = const Color.fromRGBO(42, 60, 68, 1);
  final Color btnAddPictureTextColor = const Color.fromRGBO(142, 142, 147, 1);
  final Color btnAddIconColor = const Color.fromRGBO(0, 0, 0, 0.1);
  final String textProfile = 'プロフィール';
  final Color hintTextColor = const Color.fromRGBO(0, 0, 0, 0.12);
  final Color labelTextColor = const Color.fromRGBO(0, 0, 0, 0.6);

  const UserRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    //final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(swidth * 88 / 375),
        child: AppBar(
          backgroundColor: bgColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              //back to previous screen
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: textColorDefault,
            ),
          ),
          title: Text(
            appBarTitle,
            style: TextStyle(
                color: textColorDefault,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 160 / 375,
              height: swidth * 160 / 375,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: avatar(
                        aWidth: swidth * 160 / 375,
                        aHeight: swidth * 160 / 375),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        // choose picture
                      },
                      child: camera(
                          cWidth: swidth * 42 / 375,
                          cHeight: swidth * 42 / 375),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 325 / 375,
              height: swidth * 72 / 375,
              child: Row(
                children: <Widget>[
                  btnAddPicture(
                      bWidth: swidth * 72 / 375,
                      bHeight: swidth * 72 / 375,
                      addFunction: () {
                        // add picture
                      }),
                  SizedBox(
                    width: swidth * 12 / 375,
                    height: swidth * 12 / 375,
                  ),
                  btnAddPicture(
                      bWidth: swidth * 72 / 375,
                      bHeight: swidth * 72 / 375,
                      addFunction: () {
                        // add picture
                      }),
                  SizedBox(
                    width: swidth * 12 / 375,
                    height: swidth * 12 / 375,
                  ),
                  btnAddPicture(
                      bWidth: swidth * 72 / 375,
                      bHeight: swidth * 72 / 375,
                      addFunction: () {
                        // add picture
                      }),
                  SizedBox(
                    width: swidth * 12 / 375,
                    height: swidth * 12 / 375,
                  ),
                  btnAddPicture(
                      bWidth: swidth * 72 / 375,
                      bHeight: swidth * 72 / 375,
                      addFunction: () {
                        // add picture
                      }),
                ],
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 32 / 375,
            ),
            Container(
              width: swidth,
              height: swidth * 18 / 375,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: Text(
                textProfile,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textColorDefault,
                ),
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 16 / 375,
            ),
            SizedBox(
              width: swidth * 327 / 375,
              height: swidth * 65 / 375,
              child: TextFieldCustom(
                cHeight: swidth * 65 / 375,
                cWidth: swidth * 327 / 375,
                passwordTextField: false,
                hintT: '名前を入力してください',
                hintColor: hintTextColor,
                lText: 'お名前',
                lSize: 12,
                tSize: 14,
                inBorder: const OutlineInputBorder(),
                lColor: labelTextColor,
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 327 / 375,
              height: swidth * 65 / 375,
              child: TextFieldCustom(
                cHeight: swidth * 65 / 375,
                cWidth: swidth * 327 / 375,
                passwordTextField: false,
                hintT: 'ニックネームを入力してください',
                hintColor: hintTextColor,
                lText: 'ニックネーム',
                lSize: 12,
                tSize: 14,
                inBorder: const OutlineInputBorder(),
                lColor: labelTextColor,
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 327 / 375,
              height: swidth * 65 / 375,
              child: TextFieldCustom(
                cHeight: swidth * 65 / 375,
                cWidth: swidth * 327 / 375,
                passwordTextField: false,
                hintT: '選択してください',
                hintColor: hintTextColor,
                lText: '性別',
                lSize: 12,
                tSize: 14,
                inBorder: const OutlineInputBorder(),
                lColor: labelTextColor,
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 327 / 375,
              height: swidth * 65 / 375,
              child: TextFieldCustom(
                cHeight: swidth * 65 / 375,
                cWidth: swidth * 327 / 375,
                passwordTextField: false,
                hintT: '選択してください',
                hintColor: hintTextColor,
                lText: '職業',
                lSize: 12,
                tSize: 14,
                inBorder: const OutlineInputBorder(),
                lColor: labelTextColor,
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 327 / 375,
              height: swidth * 65 / 375,
              child: TextFieldCustom(
                cHeight: swidth * 65 / 375,
                cWidth: swidth * 327 / 375,
                passwordTextField: false,
                hintT: '選択してください',
                hintColor: hintTextColor,
                lText: '出身地',
                lSize: 12,
                tSize: 14,
                inBorder: const OutlineInputBorder(),
                lColor: labelTextColor,
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            SizedBox(
              width: swidth * 327 / 375,
              height: swidth * 159 / 375,
              child: TextFieldCustom(
                cHeight: swidth * 159 / 375,
                cWidth: swidth * 327 / 375,
                passwordTextField: false,
                hintT: '選択してください',
                hintColor: hintTextColor,
                lText: '出身地',
                lSize: 12,
                tSize: 14,
                inBorder: const OutlineInputBorder(),
                lColor: labelTextColor,
                maxLine: 8,
                tHeight: 1.5,
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 8 / 375,
            ),
            textBottom(tWidth: swidth * 327 / 375, tHeight: swidth * 58 / 375),
            SizedBox(
              width: swidth,
              height: swidth * 48 / 375,
            ),
            Container(
              width: swidth,
              height: swidth * 18 / 375,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: Text(
                'よく出かける沿線',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: textColorDefault),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget avatar({required double aWidth, required double aHeight}) {
    return Container(
      width: aWidth,
      height: aHeight,
      decoration: BoxDecoration(color: btnBgColor, shape: BoxShape.circle),
      child: Icon(
        Icons.person,
        size: aWidth * 48 * 2 / 160,
      ),
    );
  }

  Widget camera({required double cWidth, required double cHeight}) {
    return Container(
      width: cWidth,
      height: cHeight,
      decoration: BoxDecoration(
        color: camBgColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.camera_alt,
        size: cWidth * 42 * 2 / 160,
        color: bgColor,
      ),
    );
  }

  Widget btnAddPicture(
      {required double bWidth,
      required double bHeight,
      required Function addFunction}) {
    return Container(
      width: bWidth,
      height: bHeight,
      decoration: BoxDecoration(
        color: btnBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: addFunction(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                  size: bWidth * 17 * 2 / 72,
                  color: btnAddIconColor,
                )),
            Positioned(
              bottom: bHeight * 9 / 72,
              child: Center(
                child: Text(
                  '追加',
                  style: TextStyle(
                    color: btnAddPictureTextColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textBottom({required double tWidth, required double tHeight}) {
    return Container(
        width: tWidth,
        height: tHeight,
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '以下に該当するような自己紹介文は避けましょう',
              style: TextStyle(
                fontSize: 10,
                color: labelTextColor,
              ),
            ),
            SizedBox(
              width: tWidth,
              height: tHeight / 4,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    child: Text(
                      '・個人情報を判断できるもの',
                      style: TextStyle(
                        fontSize: 10,
                        color: labelTextColor,
                      ),
                    ),
                  ),
                  Positioned(
                    left: tWidth * 2 / 5,
                    child: Text(
                      '・利用規約違反',
                      style: TextStyle(
                        fontSize: 10,
                        color: labelTextColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: tWidth,
              height: tHeight / 4,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    child: Text(
                      '・不快／卑猥な表現　',
                      style: TextStyle(
                        fontSize: 10,
                        color: labelTextColor,
                      ),
                    ),
                  ),
                  Positioned(
                    left: tWidth * 2 / 5,
                    child: Text(
                      '・公序良俗違反／法律違反',
                      style: TextStyle(
                        fontSize: 10,
                        color: labelTextColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              '・勧誘と判断できる内容　',
              style: TextStyle(
                fontSize: 10,
                color: labelTextColor,
              ),
            ),
          ],
        ));
  }
}
