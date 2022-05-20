import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inlove/controls/linkButtom.dart';
import 'package:inlove/controls/mainbtn.dart';
import 'package:inlove/screens/home.page.dart';

import '../controls/textBox.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "/LoginPage";
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final String usersAsset = 'assets/users.svg';
    final Widget user = SvgPicture.asset(
      usersAsset,
      // color: Colors.blue,
    );
    return Scaffold(
        backgroundColor: Color(0xff020202),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, bottom: 20),
                  child: Text(
                    "Iniciar Sesion",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color(0xff1b1b1b),
              ),
              child: Column(
                children: [
                  user,
                  CustomTextBox("Correo Electronico"),
                  CustomTextBox("Clave"),
                ],
              ),
            ),
            // prebuiltPanel(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomButton(),
            ),
            CustomLinkButton(
              tittle: "O Registrate",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.pushNamedAndRemoveUntil(
                          context, HomePage.routeName, (route) => false);
                    }),
                    child: Text(
                      "Saltar",
                      style: TextStyle(
                        color: Color(0x9effffff),
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget prebuiltPanel() {
    final String usersAsset = 'assets/users.svg';
    final Widget user = SvgPicture.asset(
      usersAsset,
      // color: Colors.blue,
    );
    return Container(
      width: 348,
      height: 303,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Color(0xff1b1b1b),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 36,
                  top: 151,
                  child: Container(
                    width: 282,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xfc616161),
                    ),
                  ),
                ),
                Positioned(
                  left: 36,
                  top: 221,
                  child: Container(
                    width: 282,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xfc616161),
                    ),
                  ),
                ),
                Positioned(
                  left: 87,
                  top: 162,
                  child: SizedBox(
                    width: 231,
                    child: Text(
                      "Correo Electronico",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 139.99,
                  top: 232,
                  child: SizedBox(
                    width: 51.26,
                    child: Text(
                      "Clave",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    user,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
