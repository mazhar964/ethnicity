import 'package:ethnicity/strings/color_string.dart';
import 'package:ethnicity/strings/text_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../auth_services/auth.dart';
import '../constants/constant.dart';
import '../logo_download/download_logo.dart';
import '../strings/font_string.dart';
import '../strings/string.dart';
import '../widget/app_button_widget.dart';
import '../widget/input_field_widget.dart';
import 'bottom_sheet_signin.dart';

class SignUp {
  
  customBottomSignUp(BuildContext context) {
  

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool isPassword = true;
    bool checkBoxValueTwo = false;
    String email = "";
    String password = "";
    AuthService? _authService= AuthService(context: context);
    // final auth = FirebaseAuth.instance;

    return showModalBottomSheet<void>(

      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: const Color(0xff222232),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: ((context, setState) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.46,
            decoration: const BoxDecoration(
              color: ColorString.bluelight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20),
              ),
            ),
            // height: 900,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 11),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  //     mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 5,
                        width: 66,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      TextString.signUp,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.sourceSansRegular,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    InPutFieldWidget(
                      height: 80,
                      validator: emailValidator,
                      onChanged: (String? value) {
                        setState(() {
                          email = value!;
                        });
                      },
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 19.0, top: 24, bottom: 24, right: 14),
                        child: SvgPicture.asset(
                          TextString.email,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(
                        top: 23,
                        bottom: 23,
                        left: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorString.bluelight),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorString.bluelight),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorString.bluelight),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintColor: ColorString.lightGray,
                      hint: TextString.emailText,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InPutFieldWidget(
                      height: 80,
                      onChanged: (String? value) {
                        setState(() {
                          password = value!;
                        });
                      },
                      validator: passwordValidator,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 19.0, top: 24, bottom: 24, right: 14),
                        child: SvgPicture.asset(
                          TextString.passwordFieldImg,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(
                        top: 23,
                        bottom: 23,
                        left: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorString.bluelight),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorString.bluelight),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorString.bluelight),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintColor: ColorString.lightGray,
                      isPassword: isPassword,
                      hint: TextString.passwordText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        child: isPassword
                            ? Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: SvgPicture.asset(
                                  TextString.eyeFieldImg,
                                  height: 4.0,
                                  width: 4.0,
                                ),
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              checkBoxValueTwo = !checkBoxValueTwo;
                            });
                          },
                          child: Container(
                              height: 19,
                              width: 19,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorString.gray,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: checkBoxValueTwo
                                  ? const Icon(
                                      Icons.check,
                                      size: 10.0,
                                      color: Colors.white,
                                    )
                                  : const Offstage()),
                        ),
                        const SizedBox(width: 12),
                        RichText(
                          text: TextSpan(
                              text: 'I aggree to the',
                              style: const TextStyle(
                                  color: Color(0xff65656B),
                                  fontFamily: sourceSansRegular),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Terms of services',
                                    style: const TextStyle(
                                        color: Color(0xffF85F6A),
                                        //  fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: sourceSansRegular),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(const DownloadLogo());
                                      }),
                                TextSpan(
                                    text: ' and\n',
                                    style: const TextStyle(
                                        color: Color(0xff65656B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: sourceSansRegular),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // navigate to desired screen
                                      }),
                                TextSpan(
                                    text: 'Privacy policy ',
                                    style: const TextStyle(
                                        color: Color(0xffF85F6A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: sourceSansRegular),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // navigate to desired screen
                                      })
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 29),
                    AppButton(
                      radius: 6,
                      height: 53,
                      color: ColorString.buttonColor,
                      text: TextString.signUp,
                      textColor: Colors.white,
                      width: double.infinity,
                      onPressed: () async {
                        // if (!_formKey.currentState!.validate()) return;
                        // print(email);
                        // print(password);
                        // bool mailSent =
                        //     await _authService!.signUpWithEmailAndPassword(
                        //   email: email,
                        //   password: password,
                        // );

                        // if (mailSent) {
                        //   Get.to(const MainCreatProfile());
                        // }
                      },
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: TextString.anaccount,
                            style: const TextStyle(
                                color: ColorString.extralightGray,
                                fontFamily: Fonts.sourceSansRegular),
                            children: <TextSpan>[
                              TextSpan(
                                  text: TextString.signIn,
                                  style: const TextStyle(
                                      color: ColorString.buttonColor,
                                      //  fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: Fonts.sourceSansRegular),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).pop();
                                      BottomSheetSignIn().customBottom(context);
                                    }),
                            ]),
                      ),
                    ),
                    // const SizedBox(height: 200),
                    SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
      },
    );
  }
}
