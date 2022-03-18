import 'package:ethnicity/strings/string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/bottom_sheet_signup.dart';
import '../Widget/input_field_widget.dart';
import '../creatprofilescreens/setname.dart';
import '../logodownload/download_logo.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 67.0, left: 43, right: 43),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              'assets/images/Group.png',
              height: 407,
              width: 339,
            ),
            const Text(
              'Welcome to Ethni-Gen',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: sourceSansRegular,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
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
                    BottomSheetSignUp().customBottom(context);
                  },
                ),
                AppButton(
                  radius: 6,
                  color: Color(0xff181829),
                  text: "Sign Up",
                  textColor: const Color(0xffFFFFFF),
                  height: 53,
                  width: MediaQuery.of(context).size.width / 3,
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
                              color: Color(0xff222232),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            // height: 900,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 24, top: 11),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  //  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffFFFFFF)
                                              .withOpacity(0.10),

                                          borderRadius:
                                              BorderRadius.circular(5),
                                          // shape: BoxShape.circle,
                                          // color: checkBoxValueTwo
                                          // ? const Color(0xff0A7302)
                                          // : const Color(0xff898A8A)
                                        ),
                                        height: 5,
                                        width: 66,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: sourceSansRegular,
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
                                            left: 19.0,
                                            top: 24,
                                            bottom: 24,
                                            right: 14),
                                        child: SvgPicture.asset(
                                          'assets/images/message.svg',
                                          // height: 4.0,
                                          // width: 4.0,
                                          // allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                        top: 23,
                                        bottom: 23,
                                        left: 18,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff222232)),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff222232)),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff222232)),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),

                                      hintColor: const Color(0xff707070),
                                      //isPassword: true,
                                      hint: 'Email',
                                      //  labelText: 'E-Mail',
                                      //  validator: passwordValidator,

                                      keyboardType: TextInputType.text,

                                      // onChanged: (String? value) {
                                      //   setState(() {
                                      //     password = value!;
                                      //   });
                                      // },
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    InPutFieldWidget(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 19.0,
                                            top: 24,
                                            bottom: 24,
                                            right: 14),
                                        child: SvgPicture.asset(
                                          'assets/images/password.svg',
                                          // height: 4.0,
                                          // width: 4.0,
                                          // allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                        top: 23,
                                        bottom: 23,
                                        left: 18,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff222232)),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff222232)),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff222232)),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),

                                      hintColor: const Color(0xff707070),
                                      isPassword: isPassword,
                                      hint: 'Password',
                                      //  labelText: 'E-Mail',
                                      //  validator: passwordValidator,
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isPassword = !isPassword;
                                          });
                                        },
                                        child: Icon(
                                          isPassword
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: const Color(0xff9FA5BB),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,

                                      // onChanged: (String? value) {
                                      //   setState(() {
                                      //     password = value!;
                                      //   });
                                      // },
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
                                                  color:
                                                      const Color(0xff65656B),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                // shape: BoxShape.circle,
                                                // color: checkBoxValueTwo
                                                // ? const Color(0xff0A7302)
                                                // : const Color(0xff898A8A)
                                              ),
                                              child: checkBoxValueTwo
                                                  ? const Offstage()
                                                  : const Icon(
                                                      Icons.check,
                                                      size: 10.0,
                                                      color: Colors.white,
                                                    )),
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
                                      color: const Color(0xffF85F6A),
                                      text: "Sign Up",
                                      textColor: const Color(0xffFFFFFF),
                                      height: 53,
                                      width: double.infinity,
                                      onPressed: () async {
                                        Get.to(const SetName());
                                      },
                                    ),
                                    const SizedBox(
                                      height: 27,
                                    ),
                                    Center(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'Have an account?',
                                            style: const TextStyle(
                                                color: Color(0xffC4C4C4),
                                                fontFamily: sourceSansRegular),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: ' Sign In',
                                                  style: const TextStyle(
                                                      color: Color(0xffF85F6A),
                                                      //  fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          sourceSansRegular),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          // navigate to desired screen
                                                        }),
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }));
                      },
                    );
                  },
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
