import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';
import '../strings/color_string.dart';
import '../strings/font_string.dart';
import '../strings/text_string.dart';

class GenderInformation extends StatefulWidget {
  const GenderInformation(
      {Key? key, required this.pageController, required this.selectedIndex})
      : super(key: key);

  final int selectedIndex;
  final PageController pageController;

  @override
  State<GenderInformation> createState() => _GenderInformationState();
}

class _GenderInformationState extends State<GenderInformation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1034,
            ),
            const Text(
              TextString.genderInformation,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: Fonts.sourceSansSemiBold,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            const Text(
              TextString.countBelow,
              style: TextStyle(
                color: ColorString.gray,
                fontSize: 16,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 19),
            InPutFieldWidget(
              hintColor: Colors.white.withOpacity(0.50),
              hint: 'Man',
              hintfontSize: 16,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 19),
            InPutFieldWidget(
              hintColor: Colors.white.withOpacity(0.50),
              hint: 'Woman',
              hintfontSize: 16,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 19),
            InPutFieldWidget(
              hintColor: Colors.white.withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Non-binary',
              hintfontSize: 16,

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 19),
            InPutFieldWidget(
              hintColor: Colors.white.withOpacity(0.50),
              hint: 'Gender fluid ',
              hintfontSize: 16,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 19),
            InPutFieldWidget(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorString.thinlightgray),
                borderRadius: BorderRadius.circular(5.0),
              ),

              hintColor: Colors.white.withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Transgender',
              hintfontSize: 16,

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 19),
            InPutFieldWidget(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorString.thinlightgray),
                borderRadius: BorderRadius.circular(5.0),
              ),
              hintColor: Colors.white.withOpacity(0.50),
              hint: 'Prefer not to say ',
              hintfontSize: 16,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 47,
            ),
            AppButton(
              radius: 6,
              color: ColorString.buttonColor,
              text: "Next",
              fontFamily: Fonts.sourceSansSemiBold,
              textColor: const Color(0xffFFFFFF),
              height: 53,
              width: double.infinity,
              onPressed: () async {
                setState(() {
                  widget.selectedIndex != 4;
                });
                widget.pageController.animateToPage(4,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
          ]),
        ),
      ),
    );
  }
}
