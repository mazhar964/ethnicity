import 'package:ethnicity/strings/string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/bottom_sheet_signup.dart';
import '../Widget/input_field_widget.dart';
import '../creatprofilescreens/create_profile_main.dart';
import '../logodownload/download_logo.dart';
import '../widget/bottom_sheet_signin.dart';

class Wellcom extends StatefulWidget {
  const Wellcom({Key? key}) : super(key: key);

  @override
  State<Wellcom> createState() => _WellcomState();
}

class _WellcomState extends State<Wellcom> {
  static bool isPassword = true;
  static bool checkBoxValueTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 67.0, left: 43, right: 43),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            'assets/images/Group.png',
            height: 407,
            width: 339,
          ),
          const Text(
            'Welcome to Ethni-Gen',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40,
              fontFamily: sourceSansSemiBold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Text(
            'Providing a solution for real-time\nsupply chain data on employee\nethnicity and gender.  ',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 16,
                fontFamily: sourceSansRegular,
                color: Color(0xff65656B),
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 47,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                radius: 6,
                color: const Color(0xffF85F6A),
                text: "Sign In",
                textColor: const Color(0xffFFFFFF),
                height: 53,
                width: 159,
                onPressed: () async {
                  BottomSheetSignIn().customBottom(context);
                },
              ),
              AppButton(
                radius: 6,
                // color: const Color(0xff181829),
                text: "Sign Up",
                textColor: const Color(0xffFFFFFF),
                height: 53,
                width: MediaQuery.of(context).size.width / 3,
                onPressed: () async {
                  SignUp().customBottomSignUp(context);
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
