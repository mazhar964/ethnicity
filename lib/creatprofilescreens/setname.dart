import 'package:ethnicity/creatprofilescreens/setprofile_image.dart';
import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/creatprofile_tile.dart';
import '../Widget/input_field_widget.dart';

class SetName extends StatefulWidget {
  const SetName({Key? key}) : super(key: key);

  @override
  State<SetName> createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.067,
          ),
          CreateProfileTile(
            arrowontap: () {
              Navigator.pop(context);
            },
            color: Color(0xffF9437D),
          ),
          const SizedBox(
            height: 111,
          ),
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
            // prefixIcon: Padding(
            //   padding: const EdgeInsets.only(
            //       left: 19.0, top: 24, bottom: 24, right: 14),
            //   child: SvgPicture.asset(
            //     'assets/images/password.svg',
            //     // height: 4.0,
            //     // width: 4.0,
            //     // allowDrawingOutsideViewBox: true,
            //   ),
            // ),

            border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 3),
            ),
            //  OutlineInputBorder(

            //   borderSide: const BorderSide(color: Color(0xff222232)),
            //   borderRadius: BorderRadius.circular(15.0),
            // ),
            contentPadding: const EdgeInsets.only(bottom: 12),

            hintColor: const Color(0xff707070),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 3),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 3),
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
              Get.to(const SetProfileImage());
            },
          ),
        ]),
      ),
    );
  }
}
