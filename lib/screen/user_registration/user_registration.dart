import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/button_text.dart';
import 'package:flutter_tts/widget/drop_down_text_feild.dart';
import 'package:flutter_tts/widget/text_field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
  final Color appColor = const Color.fromRGBO(29, 32, 136, 1);
  final Color textBeforeCheckBoxColor = const Color.fromRGBO(95, 108, 114, 1);

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
            avatarProfile(sWidth: swidth, context: context),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            rowAddPicture(rWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 32 / 375,
            ),
            firstText(tWidth: swidth),
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
            choiceText(tWidth: swidth, inText: 'よく出かける沿線'),
            SizedBox(
              width: swidth,
              height: swidth * 16 / 375,
            ),
            iconImagetext(
                cWidth: swidth, img: Image.asset('images/osaka_metro.png')),
            SizedBox(
              width: swidth,
              height: swidth * 16 / 375,
            ),
            iconImagetext(
                cWidth: swidth, img: Image.asset('images/osaka_metro.png')),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            buttonPlus(bWidth: swidth, bText: ' 沿線を追加する'),
            SizedBox(
              width: swidth,
              height: swidth * 40 / 375,
            ),
            choiceText(tWidth: swidth, inText: 'よく出かけるエリア'),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            buttonPlus(bWidth: swidth, bText: ' エリアを追加する'),
            SizedBox(
              width: swidth,
              height: swidth * 40 / 375,
            ),
            choiceText(tWidth: swidth, inText: 'お気に入りの店舗'),
            SizedBox(
              width: swidth,
              height: swidth * 16 / 375,
            ),
            iconImagetext(
                cWidth: swidth, img: Image.asset('images/restaurant.png')),
            SizedBox(
              width: swidth,
              height: swidth * 24 / 375,
            ),
            buttonPlus(bWidth: swidth, bText: ' 店舗を追加する'),
            SizedBox(
              width: swidth,
              height: swidth * 55 / 375,
            ),
            textBeforeCheckBox(tWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 13 / 375,
            ),
            checkBoxAndText(cWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 15 / 375,
            ),
            bottomButton(bWidth: swidth),
            SizedBox(
              width: swidth,
              height: swidth * 30 / 375,
            )
          ],
        ),
      ),
    );
  }

  Widget bottomButton({required double bWidth}) {
    return ButtonWithText(
      bWidth: bWidth * 327 / 375,
      bHeight: bWidth * 48 / 375,
      fTap: () {},
      bText: '上記に同意のうえ登録する',
      bColor: appColor,
      tColor: bgColor,
      tSize: 14,
      fWeight: FontWeight.w700,
    );
  }

  Widget checkBoxAndText({required double cWidth}) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: cWidth * 24 / 375,
              height: cWidth * 24 / 375,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
              child: Icon(
                Icons.check_box_rounded,
                color: appColor,
                size: 24,
              ),
            ),
          ),
          SizedBox(
            width: cWidth * 7 / 375,
            height: cWidth * 24 / 375,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '利用規約 ',
                  style: TextStyle(
                      color: appColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Noto Sans JP'),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset('images/eva_external-link-outline.png'),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ' を確認しました ',
                  style: TextStyle(
                      color: appColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Noto Sans JP'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buttonPlus({required double bWidth, required String bText}) {
    return Container(
      width: bWidth * 170 / 375,
      height: bWidth * 40 / 375,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: appColor,
            width: 2.0,
          )),
      child: GestureDetector(
        onTap: () {
          //add
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.add,
              color: appColor,
              size: 21,
            ),
            Text(
              bText,
              style: TextStyle(
                color: appColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SF Pro Text',
              ),
            )
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
      alignment: Alignment.center,
      width: cWidth,
      height: cHeight,
      decoration: BoxDecoration(
        color: camBgColor,
        shape: BoxShape.circle,
      ),
      child: SizedBox(
        width: cWidth * 19.14 / 42,
        height: cHeight * 16.12 / 42,
        child: Align(
          alignment: Alignment.center,
          child: Image.asset('images/icon_camera.png'),
        ),
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

  Widget iconImagetext({required double cWidth, required Image img}) {
    return SizedBox(
      width: cWidth * 343 / 375,
      height: cWidth * 64 / 375,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                //delete
              },
              child: Image.asset('images/icon_red.png'),
            ),
          ),
          SizedBox(
            width: cWidth * 24 / 375,
            height: cWidth * 64 / 375,
          ),
          SizedBox(
            width: cWidth * 64 / 375,
            height: cWidth * 64 / 375,
            child: img,
          ),
          SizedBox(
            width: cWidth * 16 / 375,
            height: cWidth * 64 / 375,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '大阪メトロ御堂筋線',
              style: TextStyle(
                color: textColorDefault,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Noto Sans JP',
              ),
            ),
          ),
          SizedBox(
            width: cWidth * 53 / 375,
            height: cWidth * 64 / 375,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                //change position
              },
              child: Icon(Icons.menu),
            ),
          )
        ],
      ),
    );
  }

  Widget avatarProfile(
      {required double sWidth, required BuildContext context}) {
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
                // popup
                showCupertinoModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        height: sWidth * 261 / 375,
                        width: sWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: sWidth,
                              height: sWidth * 24 / 375,
                            ),
                            Center(
                              child: Text(
                                '【注意】以下の写真は登録できません',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: textColorDefault,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Noto Sans JP'),
                              ),
                            ),
                            Center(
                              child: Text(
                                '・肖像権、著作権を侵害する画像',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: textColorDefault,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Noto Sans JP'),
                              ),
                            ),
                            Center(
                              child: Text(
                                '・その他利用規約に違反する画像',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: textColorDefault,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Noto Sans JP'),
                              ),
                            ),
                            SizedBox(
                              width: sWidth,
                              height: sWidth * 24 / 375,
                            ),
                            ButtonWithText(
                              bWidth: sWidth * 343 / 375,
                              bHeight: sWidth * 46 / 375,
                              fTap: () {},
                              bText: 'ライブラリから選ぶ',
                              bColor: appColor,
                              tSize: 17,
                              fWeight: FontWeight.w600,
                              fFmamily: 'SF Pro Text',
                              tColor: bgColor,
                            ),
                            SizedBox(
                              width: sWidth,
                              height: sWidth * 16 / 375,
                            ),
                            ButtonWithText(
                              bWidth: sWidth * 343 / 375,
                              bHeight: sWidth * 46 / 375,
                              fTap: () {},
                              bText: '写真を撮る',
                              bColor: appColor,
                              tSize: 17,
                              fWeight: FontWeight.w600,
                              fFmamily: 'SF Pro Text',
                              tColor: bgColor,
                            ),
                          ],
                        ),
                      );
                    });
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

  Widget choiceText({required double tWidth, required String inText}) {
    return Container(
      width: tWidth,
      height: tWidth * 18 / 375,
      padding: EdgeInsets.only(left: tWidth * 16 / 375),
      child: Text(
        inText, // Along the line that I often go out
        style: TextStyle(
            fontSize: 13,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            color: textColorDefault),
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

  Widget firstText({required double tWidth}) {
    return Container(
      width: tWidth,
      height: tWidth * 18 / 375,
      padding: EdgeInsets.only(left: tWidth * 16 / 375),
      child: Text(
        textProfile,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: textColorDefault,
        ),
      ),
    );
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

  Widget textBeforeCheckBox({required double tWidth}) {
    return Container(
      child: Center(
        child: Text(
          '以下利用規約を確認の上入力内容を登録してください。',
          style: TextStyle(
            color: textBeforeCheckBoxColor,
            fontSize: 12,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
