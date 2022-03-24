import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widget/app_button_widget.dart';
import '../../strings/string.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  static bool checkBoxValueTwo = false;
  static bool checkBoxValueOne = false;
  static bool checkBoxValueThree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu_outlined,
                size: 25,
              )),
        ),
        backgroundColor: const Color(0xff181829),
        centerTitle: false,
        titleSpacing: 0,
        title: const Text(
          'Payments',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xffFFFFFF),
              fontFamily: sourceSansRegular,
              fontWeight: FontWeight.w400),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 41),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff222232),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 9.0, right: 9, top: 42, bottom: 35),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Ethni-Gen",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontFamily: sourceSansSemiBold,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 9),
                            PaymentButtonTile(
                              buttontext: "P R O",
                            )
                          ],
                        ),
                        const SizedBox(height: 42),
                        Center(
                          child: Text(
                            "Ethni-Gen comes with your company ethnicity/\ngender stats, add your suppliers by subscribing to any\nof the pro plans below.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xffFFFFFF).withOpacity(0.60),
                              fontFamily: sourceSansRegular,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            maxLines: 4,
                          ),
                        ),
                        const SizedBox(height: 34),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Select a plan",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: sourceSansSemiBold,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 34),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          checkBoxValueTwo = !checkBoxValueTwo;
                                        });
                                      },
                                      child: checkBoxValueTwo
                                          ? Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .topRight,
                                                          colors: [
                                                        Color(0xffE33364),
                                                        Color(0xffF85F6A)
                                                      ])),
                                              child: Center(
                                                child: Container(
                                                  height: 10,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0xffE1E3E6),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            )),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "FREE ONE MONTH ",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontFamily: sourceSansSemiBold,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Invite 1 supplier to submit employee\nethnicity/gender data",
                                        style: TextStyle(
                                            color: Color(0xff979797),
                                            fontFamily: sourceSansSemiBold,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          checkBoxValueOne = !checkBoxValueOne;
                                        });
                                      },
                                      child: checkBoxValueOne
                                          ? Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .topRight,
                                                          colors: [
                                                        Color(0xffE33364),
                                                        Color(0xffF85F6A)
                                                      ])),
                                              child: Center(
                                                child: Container(
                                                  height: 10,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0xffE1E3E6),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            )),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: '\$650 or £499/',
                                            style: const TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontFamily: sourceSansSemiBold,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: '  12   month',
                                                  style: const TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          sourceSansSemiBold),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {}),
                                            ]),
                                      ),
                                      const Text(
                                        "Invite 30 supplier to submit employee\nethnicity/gender data",
                                        style: TextStyle(
                                            color: Color(0xff979797),
                                            fontFamily: sourceSansSemiBold,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          checkBoxValueThree =
                                              !checkBoxValueThree;
                                        });
                                      },
                                      child: checkBoxValueThree
                                          ? Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .topRight,
                                                          colors: [
                                                        Color(0xffE33364),
                                                        Color(0xffF85F6A)
                                                      ])),
                                              child: Center(
                                                child: Container(
                                                  height: 10,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0xffE1E3E6),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            )),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                                text: '\$1300 or £999/',
                                                style: const TextStyle(
                                                    color: Color(0xffFFFFFF),
                                                    fontFamily:
                                                        sourceSansSemiBold,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: '12  month',
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xffFFFFFF),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily:
                                                              sourceSansSemiBold),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {}),
                                                ]),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const PaymentButtonTile(
                                            buttontext: 'RECOMMENDED',
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "Invite UNLIMITED supplier to submit employee\nethnicity/gender data",
                                        style: TextStyle(
                                            color: Color(0xff979797),
                                            fontFamily: sourceSansSemiBold,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
            const SizedBox(height: 41),
            AppButton(
              radius: 6,
              color: const Color(0xffF85F6A),
              text: "Buy Now",
              fontFamily: sourceSansSemiBold,
              textColor: const Color(0xffFFFFFF),
              height: 53,
              width: double.infinity,
              onPressed: () async {},
            ),
          ]),
        ),
      ),
    );
  }
}

class PaymentButtonTile extends StatelessWidget {
  const PaymentButtonTile({
    Key? key,
    required this.buttontext,
  }) : super(key: key);
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffF85F6A), Color(0xffE33364)]),
        //  color: const Color(0xffE33364),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10, top: 3, bottom: 3),
          child: Text(
            buttontext,
            style: const TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: sourceSansSemiBold,
                fontSize: 11,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
