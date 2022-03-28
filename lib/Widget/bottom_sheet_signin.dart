import 'package:ethnicity/Widget/input_field_widget.dart';
import 'package:ethnicity/strings/color_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

import '../Widget/bottom_sheet_signup.dart';
import '../forgot_password/forgot_password.dart';
import '../strings/font_string.dart';
import '../strings/string.dart';
import '../strings/text_string.dart';
import 'app_button_widget.dart';

class BottomSheetSignIn {
  customBottom(BuildContext context) {
    bool isPassword = true;
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: ColorString.bluelight,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: ((context, setState) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: const BoxDecoration(
              color: ColorString.bluelight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                    height: 24,
                  ),
                  const Text(
                    TextString.signIn,
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
                    hintColor: const Color(0xff707070),
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
                              )),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const ForgetPassword());
                    },
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        TextString.forgotPassword,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: Fonts.sourceSansRegular,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  AppButton(
                    radius: 6,
                    color: ColorString.buttonColor,
                    text: TextString.signIn,
                    textColor: Colors.white,
                    height: 53,
                    width: double.infinity,
                    onPressed: () async {},
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: Text(
                      TextString.socialProfiles,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: Fonts.sourceSansRegular,
                        color: ColorString.gray,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  AppButton(
                    radius: 6,
                    color: Colors.black,
                    img: TextString.appleImage,
                    text: TextString.appleSign,
                    fontFamily: Fonts.sourceSansSemiBold,
                    textColor: Colors.white,
                    height: 53,
                    width: double.infinity,
                    onPressed: () async {},
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AppButton(
                          radius: 8,
                          isLeftAlign: true,
                          color: const Color(0xffFFFFFF),
                          img: TextString.gmailImage,
                          text: TextString.gmail,
                          fontSize: 16,
                          textColor: Colors.black,
                          height: 53,
                          width: MediaQuery.of(context).size.width * 0.44,
                          onPressed: () async {},
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: AppButton(
                          isLeftAlign: true,
                          radius: 8,
                          color: ColorString.skyblue,
                          img: TextString.linkdinImage,
                          fontSize: 16,
                          text: TextString.linkdin,
                          textColor: Colors.white,
                          height: 53,
                          width: MediaQuery.of(context).size.width * 0.44,
                          onPressed: () async {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: TextString.haveAccount,
                          style: const TextStyle(
                              color: ColorString.extralightGray,
                              fontFamily: sourceSansRegular),
                          children: <TextSpan>[
                            TextSpan(
                                text: TextString.signUp,
                                style: const TextStyle(
                                    color: ColorString.buttonColor,
                              

                                    fontFamily: sourceSansRegular),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pop();
                                    SignUp().customBottomSignUp(context);
                                  }),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}
