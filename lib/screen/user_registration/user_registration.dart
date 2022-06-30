import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/drop_down_text_feild.dart';
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
    //final _formKey = GlobalKey<FormState>();

    final double swidth = MediaQuery.of(context).size.width;
    //final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
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
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            avatarProfile(sWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            rowAddPicture(rWidth: swidth),
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
                  fontWeight: FontWeight.w600,
                  color: textColorDefault,
                ),
              ),
            ),
            SizedBox(
              width: swidth,
              height: swidth * 16 / 375,
            ),
            textFieldName(tWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            textFieldNickName(tWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            dropDownSex(dHeight: swidth * 65 / 375, dWidth: swidth * 327 / 375),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            dropDownProfession(
                dWidth: swidth * 327 / 375, dHeight: swidth * 65 / 375),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            dropDownBirthplace(
                dWidth: swidth * 327 / 375, dHeight: swidth * 65 / 375),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            textFieldIntroduction(tWidth: swidth),
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
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
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
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: aWidth * 48 / 160,
          height: aWidth * 48 / 160,
          child: Image.asset('images/icon_person.png'),
        ),
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
      child: SizedBox(
        width: cWidth * 19.14 / 42,
        height: cHeight * 16.12 / 42,
        child: Image.asset('images/icon_camera.png'),
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
              child: SizedBox(
                width: bWidth * 17 / 72,
                height: bWidth * 17 / 72,
                child: Image.asset('images/icon_add.png'),
              ),
            ),
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

  Widget avatarProfile({required double sWidth}) {
    return SizedBox(
      width: sWidth * 160 / 375,
      height: sWidth * 160 / 375,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child:
                avatar(aWidth: sWidth * 160 / 375, aHeight: sWidth * 160 / 375),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                // choose picture
              },
              child:
                  camera(cWidth: sWidth * 42 / 375, cHeight: sWidth * 42 / 375),
            ),
          )
        ],
      ),
    );
  }

  Widget rowAddPicture({required double rWidth}) {
    return SizedBox(
      width: rWidth * 325 / 375,
      height: rWidth * 72 / 375,
      child: Row(
        children: <Widget>[
          btnAddPicture(
              bWidth: rWidth * 72 / 375,
              bHeight: rWidth * 72 / 375,
              addFunction: () {
                // add picture
              }),
          SizedBox(
            width: rWidth * 12 / 375,
            height: rWidth * 12 / 375,
          ),
          btnAddPicture(
              bWidth: rWidth * 72 / 375,
              bHeight: rWidth * 72 / 375,
              addFunction: () {
                // add picture
              }),
          SizedBox(
            width: rWidth * 12 / 375,
            height: rWidth * 12 / 375,
          ),
          btnAddPicture(
              bWidth: rWidth * 72 / 375,
              bHeight: rWidth * 72 / 375,
              addFunction: () {
                // add picture
              }),
          SizedBox(
            width: rWidth * 12 / 375,
            height: rWidth * 12 / 375,
          ),
          btnAddPicture(
              bWidth: rWidth * 72 / 375,
              bHeight: rWidth * 72 / 375,
              addFunction: () {
                // add picture
              }),
        ],
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
                fontWeight: FontWeight.w400,
                fontFamily: 'Noto Sans JP',
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
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Noto Sans JP',
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
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Noto Sans JP',
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
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Noto Sans JP',
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
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Noto Sans JP',
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
                fontWeight: FontWeight.w400,
                fontFamily: 'Noto Sans JP',
                fontSize: 10,
                color: labelTextColor,
              ),
            ),
          ],
        ));
  }

  Widget dropDownSex({required double dWidth, required double dHeight}) {
    return Container(
      width: dWidth,
      height: dHeight,
      alignment: Alignment.center,
      child: DropDownCustom(
        dWidth: dWidth,
        dHeight: dHeight,
        inputData: ['男', '女性', '他の'],
        hText: '選択してください',
        //Please select another
        lText: '性別',
        //sex
        lColor: labelTextColor,
        lSize: 12,
        hColor: hintTextColor,
        hFontW: FontWeight.w500,
        hSize: 14,
        lFontW: FontWeight.w400,
        tColor: textColorDefault,
        tFontW: FontWeight.w400,
      ),
    );
  }

  Widget dropDownProfession({required double dWidth, required double dHeight}) {
    return Container(
      width: dWidth,
      height: dHeight,
      alignment: Alignment.center,
      child: DropDownCustom(
        dWidth: dWidth,
        dHeight: dHeight,
        inputData: ['医者', 'エンジニア', '先生', '瞳', '学生', 'ワーカー'],
        hText: '選択してください',
        //Please select another
        lText: '職業',
        //Profession
        lColor: labelTextColor,
        lSize: 12,
        hColor: hintTextColor,
        hFontW: FontWeight.w500,
        hSize: 14,
        lFontW: FontWeight.w400,
        tColor: textColorDefault,
        tFontW: FontWeight.w400,
      ),
    );
  }

  Widget dropDownBirthplace({required double dWidth, required double dHeight}) {
    return Container(
      width: dWidth,
      height: dHeight,
      alignment: Alignment.center,
      child: DropDownCustom(
        dWidth: dWidth,
        dHeight: dHeight,
        inputData: ['東京県', '大阪県', '京都県', '神奈川県', '高知県', '熊本県'],
        hText: '選択してください',
        //Please select another
        lText: '出身地',
        //Birthplace
        lColor: labelTextColor,
        lSize: 12,
        hColor: hintTextColor,
        hFontW: FontWeight.w500,
        hSize: 14,
        lFontW: FontWeight.w400,
        tColor: textColorDefault,
        tFontW: FontWeight.w400,
      ),
    );
  }

  Widget textFieldName({required double tWidth}) {
    return SizedBox(
      width: tWidth * 327 / 375,
      height: tWidth * 65 / 375,
      child: TextFieldCustom(
        cHeight: tWidth * 65 / 375,
        cWidth: tWidth * 327 / 375,
        passwordTextField: false,
        hintT: '名前を入力してください',
        hintColor: hintTextColor,
        lText: 'お名前',
        lSize: 12,
        tSize: 14,
        inBorder: const OutlineInputBorder(),
        lColor: labelTextColor,
        tHeight: 1.5,
        maxLine: 1,
        tWeight: FontWeight.w500,
        fWeight: FontWeight.w500,
      ),
    );
  }

  Widget textFieldNickName({required double tWidth}) {
    return SizedBox(
      width: tWidth * 327 / 375,
      height: tWidth * 65 / 375,
      child: TextFieldCustom(
        cHeight: tWidth * 65 / 375,
        cWidth: tWidth * 327 / 375,
        passwordTextField: false,
        hintT: 'ニックネームを入力してください',
        hintColor: hintTextColor,
        lText: 'ニックネーム',
        lSize: 12,
        tSize: 14,
        inBorder: const OutlineInputBorder(),
        lColor: labelTextColor,
        tHeight: 1.5,
        maxLine: 1,
        tWeight: FontWeight.w500,
        fWeight: FontWeight.w500,
      ),
    );
  }

  Widget textFieldIntroduction({required double tWidth}) {
    return SizedBox(
      width: tWidth * 327 / 375,
      height: tWidth * 159 / 375,
      child: TextFieldCustom(
        cHeight: tWidth * 159 / 375,
        cWidth: tWidth * 327 / 375,
        passwordTextField: false,
        hintT: '選択してください',
        hintColor: hintTextColor,
        lText: '出身地',
        lSize: 12,
        tSize: 14,
        inBorder: const OutlineInputBorder(),
        lColor: labelTextColor,
        tColor: textColorDefault,
        maxLine: 10,
        tHeight: 1.5,
        tWeight: FontWeight.w500,
        fWeight: FontWeight.w500,
      ),
    );
  }
}
