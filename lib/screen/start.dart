import 'package:flutter/material.dart';
import '../widget/buttonWithText.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        width: swidth,
        height: sheight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: sheight * 378 / 812,
            ),
            Image.asset(
              'images/ookini_logo_1.png',
              width: 202,
              height: 55,
            ),
            SizedBox(
              width: swidth,
              height: sheight * 201 / 812,
            ),
            SizedBox(
              width: 60,
              height: 6,
              child: RowOf4Circle(),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 11 / 812,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              width: swidth,
              height: 46,
              child: ButtonWithText(
                bWidth: swidth - 32,
                bHeight: 46,
                fTap: () {},
                bText: '新しく始める（無料）', //Start anew (free)
                bColor: Color.fromRGBO(29, 32, 136, 1),
                tSize: 17,
                fWeight: FontWeight.bold,
                tColor: Colors.white,
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 19 / 812,
            ),
            Container(
              width: swidth,
              height: 46,
              padding: EdgeInsets.only(left: 16),
              child: ButtonWithText(
                bWidth: swidth - 32,
                bHeight: 46,
                fTap: () {},
                bText:
                    'すでに登録されている方はこちら', //Click here if you are already registered
                tColor: Color.fromRGBO(29, 32, 136, 1),
                tSize: 17,
                fWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget RowOf4Circle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 37.png'),
        ),
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 40.png'),
        ),
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 40.png'),
        ),
        SizedBox(
          width: 15,
          height: 6,
          child: Image.asset('images/Ellipse 40.png'),
        ),
      ],
    );
  }
}
