import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/creatprofile_tile.dart';
import '../Widget/input_field_widget.dart';
import 'ethnicity_stats.dart';

class GenderInformation extends StatefulWidget {
  const GenderInformation({Key? key}) : super(key: key);

  @override
  State<GenderInformation> createState() => _GenderInformationState();
}

class _GenderInformationState extends State<GenderInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 55,
          ),
          const CreateProfileTile(
            color: Color(0xffD4D6F6),
            color3: Color(0xffF9437D),
            width5: 12,
            width2: 18,
          ),
          const SizedBox(
            height: 84,
          ),
          const Text(
            "Fill in gender information",
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
          const SizedBox(height: 19),
          InPutFieldWidget(
            // border: UnderlineInputBorder(
            //   borderSide: BorderSide(
            //       color: Color(0xffC4C4C4).withOpacity(0.33), width: 3),
            // ),

            // border: OutlineInputBorder(
            //   borderSide: const BorderSide(color: Color(0xff979797)),
            //   borderRadius: BorderRadius.circular(5.0),
            // ),

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffFFFFFF),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),

            //isPassword: isPassword,
            hint: 'Man',
            hintfontSize: 16,

            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 19),
          InPutFieldWidget(
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffFFFFFF),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),

            //isPassword: isPassword,
            hint: 'Woman',
            hintfontSize: 16,

            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 19),
          InPutFieldWidget(
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffFFFFFF),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),

            //isPassword: isPassword,
            hint: 'Non-binary',
            hintfontSize: 16,

            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 19),
          InPutFieldWidget(
            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffFFFFFF),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            hint: 'Gender fluid ',
            hintfontSize: 16,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 19),
          InPutFieldWidget(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff979797)),
              borderRadius: BorderRadius.circular(5.0),
            ),

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffFFFFFF),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            //isPassword: isPassword,
            hint: 'Transgender',
            hintfontSize: 16,

            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 19),
          InPutFieldWidget(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff979797)),
              borderRadius: BorderRadius.circular(5.0),
            ),

            hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffFFFFFF),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),

            //isPassword: isPassword,
            hint: 'Prefer not to say ',
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
            height: 47,
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
              Get.to(const EthnicityStats());
            },
          ),
        ]),
      ),
    );
  }
}