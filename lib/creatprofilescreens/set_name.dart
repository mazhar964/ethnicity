import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';

// ignore: must_be_immutable
class SetName extends StatefulWidget {
  SetName({Key? key, required this.selectedIndex, required this.pageController})
      : super(key: key);
  int selectedIndex;
  final PageController pageController;
  @override
  State<SetName> createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1366,
          ),

          // SizedBox(height: 111,)
          // CreateProfileTile(
          //   arrowontap: () {
          //     Navigator.pop(context);
          //   },
          //   color: Color(0xffF9437D),
          // ),
          // const SizedBox(
          //   height: 111,
          // ),
          const Text(
            "What is your\nCompany name?",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 24,
              fontFamily: sourceSansSemiBold,
            ),
            maxLines: 2,
          ),
          InPutFieldWidget(
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 2.5),
            ),

            contentPadding: const EdgeInsets.only(bottom: 12),

            hintColor: const Color(0xff707070),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 2.5),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 2.5),
            ),

            //isPassword: isPassword,
            hint: 'Company abc',
            hintfontSize: 16,
            //  labelText: 'E-Mail',
            //  validator: passwordValidator,
            // suffixIcon: GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       isPassword = !isPassword;
            //     });
            //   },
            //   child: Icon(
            //     isPassword ? Icons.visibility_off : Icons.visibility,
            //     color: const Color(0xff9FA5BB),
            //   ),
            // ),
            keyboardType: TextInputType.text,

            // onChanged: (String? value) {
            //   setState(() {
            //     password = value!;
            //   });
            // },
          ),
          const SizedBox(
            height: 61,
          ),
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
                widget.selectedIndex != 1;
              });
              widget.pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
              // Get.to( SetProfileImage( selectedIndex: 1, pageController: widget.pageController,));
            },
          ),
        ]),
      ),
    );
  }
}
