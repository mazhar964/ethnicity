import 'package:ethnicity/Widget/input_field_widget.dart';
import 'package:ethnicity/strings/text_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../auth_services/auth.dart';
import '../constants/constant.dart';
import '../forgot_password/forgot_password.dart';
import '../logo_download/download_logo.dart';
import '../strings/color_string.dart';
import '../strings/font_string.dart';
import '../strings/string.dart';
import '../widget/bottom_sheet_signin.dart';

class Wellcom extends StatefulWidget {
  const Wellcom({Key? key}) : super(key: key);

  @override
  State<Wellcom> createState() => _WellcomState();
}

class _WellcomState extends State<Wellcom> {
  late AuthService _authService;
  bool isPassword = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool checkBoxValueTwo = false;
  String email = "";
  String password = "";
  String email1 = "";
  String password1 = "";

  @override
  void initState() {
    super.initState();
    _authService = AuthService(context: context);
  }

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
                    showModalBottomSheet<void>(
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
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 24, top: 10),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.10),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                      height: 80,
                                      onChanged: (String? value) {
                                        setState(() {
                                          email = value!;
                                        });
                                      },
                                      validator: emailValidator,
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 19.0,
                                            top: 24,
                                            bottom: 24,
                                            right: 14),
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
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                            left: 19.0,
                                            top: 24,
                                            bottom: 24,
                                            right: 14),
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
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                                  padding: const EdgeInsets.all(
                                                      14.0),
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
                                      onPressed: () async {
                                        if (!_formKey.currentState!.validate())
                                          return;
                                        print(email);
                                        print(password);
                                        await _authService
                                            .signInWithEmailAndPassword(
                                          email: email,
                                          password: password,
                                        );
                                      },
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.44,
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.44,
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
                                                color:
                                                    ColorString.extralightGray,
                                                fontFamily: sourceSansRegular),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: TextString.signUp,
                                                  style: const TextStyle(
                                                      color: ColorString
                                                          .buttonColor,
                                                      fontFamily:
                                                          sourceSansRegular),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          // Navigator.of(context)
                                                          //     .pop();
                                                          // SignUp()
                                                          //     .customBottomSignUp(
                                                          //         context);
                                                        }),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }));
                      },
                    );

                    // BottomSheetSignIn().customBottom(context);
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
                    showModalBottomSheet<void>(
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
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 24, top: 11),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                            left: 19.0,
                                            top: 24,
                                            bottom: 24,
                                            right: 14),
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
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                            left: 19.0,
                                            top: 24,
                                            bottom: 24,
                                            right: 14),
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
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: ColorString.bluelight),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                                padding:
                                                    const EdgeInsets.all(14.0),
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
                                              checkBoxValueTwo =
                                                  !checkBoxValueTwo;
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
                                                borderRadius:
                                                    BorderRadius.circular(6),
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
                                                  fontFamily:
                                                      sourceSansRegular),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: ' Terms of services',
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xffF85F6A),
                                                        //  fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            sourceSansRegular),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            Get.to(
                                                                const DownloadLogo());
                                                          }),
                                                TextSpan(
                                                    text: ' and\n',
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff65656B),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            sourceSansRegular),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // navigate to desired screen
                                                          }),
                                                TextSpan(
                                                    text: 'Privacy policy ',
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xffF85F6A),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            sourceSansRegular),
                                                    recognizer:
                                                        TapGestureRecognizer()
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
                                        if (!_formKey.currentState!.validate())
                                          return;
                                        print(email);
                                        print(password);
                                        bool mailSent = await _authService
                                            .signUpWithEmailAndPassword(
                                          email: email,
                                          password: password,
                                        );

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
                                                color:
                                                    ColorString.extralightGray,
                                                fontFamily:
                                                    Fonts.sourceSansRegular),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: TextString.signIn,
                                                  style: const TextStyle(
                                                      color: ColorString
                                                          .buttonColor,
                                                      //  fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: Fonts
                                                          .sourceSansRegular),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          BottomSheetSignIn()
                                                              .customBottom(
                                                                  context);
                                                        }),
                                            ]),
                                      ),
                                    ),
                                    // const SizedBox(height: 200),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }));
                      },
                    );

                    // SignUp().customBottomSignUp(context);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ]),
      ),
    );
  }
}
