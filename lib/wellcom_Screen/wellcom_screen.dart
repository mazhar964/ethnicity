import 'package:ethnicity/strings/text_string.dart';
import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/bottom_sheet_signup.dart';

import '../strings/color_string.dart';
import '../strings/font_string.dart';
import '../widget/bottom_sheet_signin.dart';

class Wellcom extends StatefulWidget {
  const Wellcom({Key? key}) : super(key: key);

  @override
  State<Wellcom> createState() => _WellcomState();
}

class _WellcomState extends State<Wellcom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 67.0, left: 43, right: 43),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            TextString.welcomeImage,
            height: 407,
            width: 339,
          ),
          const Text(
            TextString.welcomEthni,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40,
              fontFamily: Fonts.sourceSansSemiBold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Text(
            TextString.providingSolution,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 16,
                fontFamily: Fonts.sourceSansRegular,
                color: ColorString.gray,
                fontWeight: FontWeight.w400),
            maxLines: 3,
          ),
          const SizedBox(
            height: 47,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppButton(
                  radius: 8,
                  color: ColorString.buttonColor,
                  text: TextString.signIn,
                  textColor: const Color(0xffFFFFFF),
                  height: 53,
                  width: 159,
                  onPressed: () async {
                    BottomSheetSignIn().customBottom(context);
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: AppButton(
                  radius: 6,
                  // color: const Color(0xff181829),
                  text: TextString.signUp,
                  textColor: Colors.white,
                  height: 53,
                  width: 159,
                  onPressed: () async {
                    SignUp().customBottomSignUp(context);
                  },
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
