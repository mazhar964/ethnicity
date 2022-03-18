import 'package:ethnicity/creatprofilescreens/setprofile_image.dart';
import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/creatprofile_tile.dart';
import '../Widget/input_field_widget.dart';
import 'gender_information.dart';

class NoEmployees extends StatefulWidget {
  const NoEmployees({Key? key}) : super(key: key);

  @override
  State<NoEmployees> createState() => _NoEmployeesState();
}

class _NoEmployeesState extends State<NoEmployees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 78,
          ),
          const CreateProfileTile(
            color: Color(0xffD4D6F6),
            color2: Color(0xffF9437D),
            width5: 12,
            width1: 18,
          ),
          const SizedBox(
            height: 111,
          ),
          const Text(
            "How many employees does\nyour company have?",
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
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 3),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 3),
            ),
            //  OutlineInputBorder(

            //   borderSide: const BorderSide(color: Color(0xff222232)),
            //   borderRadius: BorderRadius.circular(15.0),
            // ),
            contentPadding: EdgeInsets.only(bottom: 12),

            hintColor: const Color(0xff65656B),

            //isPassword: isPassword,
            hint: 'Give a total count',
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
            height: 66,
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
              Get.to(const GenderInformation());
            },
          ),
        ]),
      ),
    );
  }
}
