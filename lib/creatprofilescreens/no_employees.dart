import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';

// ignore: must_be_immutable
class NoEmployees extends StatefulWidget {
   NoEmployees({Key? key, required this.pageController, required this.selectedIndex}) : super(key: key);
  int selectedIndex;
 final   PageController pageController;

  @override
  State<NoEmployees> createState() => _NoEmployeesState();
}

class _NoEmployeesState extends State<NoEmployees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
       
      
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1366,
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
          contentPadding:const  EdgeInsets.only(bottom: 12),

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

             setState(() {
              widget.selectedIndex!=3;
              });
                widget.pageController.animateToPage(3,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
            // Get.to(const GenderInformation());
          },
        ),
      ]),
    );
  }
}
