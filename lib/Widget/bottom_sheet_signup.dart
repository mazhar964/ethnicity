import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../creatprofilescreens/create_profile_main.dart';
import '../logodownload/download_logo.dart';
import '../strings/string.dart';
import '../widget/app_button_widget.dart';
import '../widget/input_field_widget.dart';

class SignUp {
  customBottomSignUp(BuildContext context) {
    bool isPassword = true;
    bool checkBoxValueTwo = false;

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
              color: Color(0xff222232),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20),
              ),
            ),
            // height: 900,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                //     mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.10),
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
                          left: 19.0, top: 24, bottom: 24, right: 14),
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
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintColor: const Color(0xff707070),
                    hint: 'Email',
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
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(8.0),
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
                        isPassword ? Icons.visibility : Icons.visibility_off,
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
                            checkBoxValueTwo = !checkBoxValueTwo;
                          });
                        },
                        child: Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff65656B),
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
                    color: const Color(0xffF85F6A),
                    text: "Sign Up",
                    textColor: const Color(0xffFFFFFF),
                    width: double.infinity,
                    onPressed: () async {
                      Get.offAll(const MainCreatProfile());
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
                                    fontWeight: FontWeight.w400,
                                    fontFamily: sourceSansRegular),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
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
          );
        }));
      },
    );
  }
}
