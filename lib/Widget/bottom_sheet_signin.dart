import 'package:ethnicity/Widget/input_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../strings/string.dart';
import 'app_button_widget.dart';

class BottomSheetSignIn {
  customBottom(BuildContext context) {
    bool isPassword = false;
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
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: const BoxDecoration(
              color: Color(0xff222232),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20),
              ),
            ),
            // height: 900,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                //  mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.10),

                        borderRadius: BorderRadius.circular(5),
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
                    height: 24,
                  ),
                  const Text(
                    "Sign In",
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
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(15.0),
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
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff222232)),
                      borderRadius: BorderRadius.circular(15.0),
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
                        isPassword ? Icons.visibility_off : Icons.visibility,
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
                    height: 22,
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password ?',
                      //textAlign: TextAlign.end,

                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: sourceSansRegular,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  AppButton(
                    radius: 6,
                    color: const Color(0xffF85F6A),
                    text: "Sign in",
                    textColor: const Color(0xffFFFFFF),
                    height: 53,
                    width: double.infinity,
                    onPressed: () async {},
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: Text(
                      'or use one of your social profiles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: sourceSansRegular,
                        color: Color.fromRGBO(101, 101, 107, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  AppButton(
                    radius: 6,
                    color: const Color(0xff000000),
                    img: 'assets/images/apple.svg',
                    text: "Sign in with Apple",
                    fontFamily: sourceSansSemiBold,
                    textColor: const Color(0xffFFFFFF),
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
                          radius: 12,
                          isLeftAlign: true,
                          color: const Color(0xffFFFFFF),
                          img: 'assets/images/gmail.svg',
                          text: "Gmail",
                          fontSize: 16,
                          textColor: const Color(0xff000000),
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
                          radius: 12,
                          color: const Color(0xff0A66C2),
                          img: 'assets/images/linkdin.svg',
                          fontSize: 16,
                          text: "LinkedIn",
                          textColor: const Color(0xffFFFFFF),
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
                          text: 'Don’t have account',
                          style: const TextStyle(
                              color: Color(0xffC4C4C4),
                              fontFamily: sourceSansRegular),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Sign UP',
                                style: const TextStyle(
                                    color: Color(0xffF85F6A),
                                    //  fontSize: 17,

                                    fontFamily: sourceSansRegular),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
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

