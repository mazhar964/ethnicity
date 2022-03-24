import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';

// ignore: must_be_immutable
class EthnicityStats extends StatefulWidget {
  EthnicityStats(
      {Key? key, required this.selectedIndex, required this.pageController})
      : super(key: key);
  int selectedIndex;
  final PageController pageController;

  @override
  State<EthnicityStats> createState() => _EthnicityStatsState();
}

class _EthnicityStatsState extends State<EthnicityStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 47,
          ),
          const Text(
            "Fill in ethnicity stats",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 24,
              fontFamily: sourceSansSemiBold,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 8),
          const Text(
            "Give count below",
            style: TextStyle(
              color: Color(0xff65656B),
              fontSize: 16,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 26),
          const Text(
            "White",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'English ',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Welsh',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Scottish ',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Northern Irish',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'British Irish',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Gypsy',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: 216,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'Other White background',
            hintfontSize: 16,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 28),
          const Text(
            "Black",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'Caribbean',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'African',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 17,
          ),
          InPutFieldWidget(
            width: 216,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'Other Black background',
            hintfontSize: 16,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 26),
          const Text(
            "Mixed",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'White and Black Caribbean',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'White and Black African',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'White & Asians',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: 216,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'Other Mixed ethnic',
            hintfontSize: 16,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 26),
          const Text(
            "White American",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'African American',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'American Indian',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            hint: 'Alaska Native',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 26),
          const Text(
            "Asian American",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

            //isPassword: isPassword,
            hint: 'Native Hawaiian',

            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

            //isPassword: isPassword,
            hint: 'Pacific Islander',

            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 26),
          const Text(
            "Asian/Asian British",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Indian',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Pakistani',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Bangladeshi ',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  //isPassword: isPassword,
                  hint: 'Chinese',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: 216,

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

            //isPassword: isPassword,
            hint: 'Other Asian ethnic',
            hintfontSize: 16,

            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 26),
          const Text(
            "Other",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

            //isPassword: isPassword,
            hint: 'Arab',

            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 14),
          InPutFieldWidget(
            width: double.infinity,

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

            //isPassword: isPassword,
            hint: 'Other ethnic group',

            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 28),
          AppButton(
            radius: 6,
            color: const Color(0xffF85F6A),
            text: "Next",
            fontFamily: sourceSansSemiBold,
            textColor: const Color(0xffFFFFFF),
            height: 53,
            width: double.infinity,
            onPressed: () async {
              setState(() {
                widget.selectedIndex != 5;
              });
              widget.pageController.animateToPage(5,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
              //Get.to(const SetProfileImage());
            },
          ),
          const SizedBox(height: 40)
        ]),
      ),
    );
  }
}
