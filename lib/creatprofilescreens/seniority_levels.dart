import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';
import '../drawer/drawer.dart';
import '../strings/string.dart';

// ignore: must_be_immutable
class SeniorityLevel extends StatefulWidget {
  SeniorityLevel(
      {Key? key, required this.selectedIndex, required this.pageController})
      : super(key: key);
  int selectedIndex;
  final PageController pageController;

  @override
  State<SeniorityLevel> createState() => _SeniorityLevelState();
}

class _SeniorityLevelState extends State<SeniorityLevel> {
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
            "What are the seniority levels in the workplace?",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 24,
                fontFamily: sourceSansSemiBold,
                fontWeight: FontWeight.w600),
            maxLines: 2,
          ),
          const SizedBox(height: 16),
          const Text(
            "How many of your team from ethnic minority backgrounds make up the below positions? ",
            style: TextStyle(
              color: Color(0xff65656B),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 16),
          const Text(
            "1. Directors such as Chairman, Executive Director and non-Executive Director. ",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontFamily: sourceSansSemiBold,
                fontWeight: FontWeight.w600),
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          const Text(
            "They lead strategic business activities and have ultimate financial responsibility towards all stakeholders. ",
            style: TextStyle(
              color: Color(0xff65656B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'White ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Black',
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
                  keyboardType: TextInputType.number,

                  // onChanged: (String? value) {
                  //   setState(() {
                  //     password = value!;
                  //   });
                  // },
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Mixed ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  //isPassword: isPassword,
                  hint: 'White American',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Asian American',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Asian',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Arab',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'others',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          const Text(
            "2. Corporate Officers such as Chief Executive Officer (CEO), Chief Financial Officer (CFO), Chief Information Officer (CIO) and others.",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontFamily: sourceSansSemiBold,
                fontWeight: FontWeight.w600),
            maxLines: 3,
          ),
          const SizedBox(height: 7),
          const Text(
            " They have specific areas of expertise and responsibility.",
            style: TextStyle(
              color: Color(0xff65656B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'White ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Black',
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
                  keyboardType: TextInputType.number,

                  // onChanged: (String? value) {
                  //   setState(() {
                  //     password = value!;
                  //   });
                  // },
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Mixed ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  //isPassword: isPassword,
                  hint: 'White American',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Asian American',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Asian',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Arab',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'others',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          const Text(
            "3. Managers",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontFamily: sourceSansSemiBold,
                fontWeight: FontWeight.w600),
            maxLines: 3,
          ),
          const SizedBox(height: 11),
          const Text(
            " They are responsible for the day-to-day running of sepcific areas if the business.",
            style: TextStyle(
              color: Color(0xff65656B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 21),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'White ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Black',
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
                  keyboardType: TextInputType.number,

                  // onChanged: (String? value) {
                  //   setState(() {
                  //     password = value!;
                  //   });
                  // },
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Mixed ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  //isPassword: isPassword,
                  hint: 'White American',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Asian American',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Asian',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Arab',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'others',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          const Text(
            "4. Employees",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontFamily: sourceSansSemiBold,
                fontWeight: FontWeight.w600),
            maxLines: 3,
          ),
          const SizedBox(height: 14),
          const Text(
            "They carry out essential functions as directed by managers",
            style: TextStyle(
              color: Color(0xff65656B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: sourceSansRegular,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'White ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Black',
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
                  keyboardType: TextInputType.number,

                  // onChanged: (String? value) {
                  //   setState(() {
                  //     password = value!;
                  //   });
                  // },
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Mixed ',
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

                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  //isPassword: isPassword,
                  hint: 'White American',
                  hintfontSize: 16,

                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Asian American',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'Asian',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                child: InPutFieldWidget(
                  width: 159,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),

                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                  //isPassword: isPassword,
                  hint: 'Arab',
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
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //       color: Color(0xffFFFFFF), width: 1.5),
                  //   borderRadius: BorderRadius.circular(4.0),
                  // ),
                  hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                  hint: 'others',
                  hintfontSize: 16,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          AppButton(
            radius: 6,
            color: const Color(0xffF85F6A),
            text: "Next",
            fontFamily: sourceSansSemiBold,
            textColor: const Color(0xffFFFFFF),
            height: 53,
            width: double.infinity,
            onPressed: () async {
              // setState(() {
              // widget.selectedIndex!=1;
              // });
              //   widget.pageController.animateToPage(1,
              //             duration: const Duration(milliseconds: 500),
              //             curve: Curves.easeIn);
              Get.to(const CustomDrawerApp());
            },
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
