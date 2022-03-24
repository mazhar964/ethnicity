import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';

class NoEmployees extends StatefulWidget {
  const NoEmployees(
      {Key? key, required this.pageController, required this.selectedIndex})
      : super(key: key);
  final int selectedIndex;
  final PageController pageController;

  @override
  State<NoEmployees> createState() => _NoEmployeesState();
}

class _NoEmployeesState extends State<NoEmployees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 2.5),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 2.5),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: const Color(0xffC4C4C4).withOpacity(0.33), width: 2.5),
            ),
            contentPadding: const EdgeInsets.only(bottom: 12),
            hintColor: const Color(0xff65656B),
            hint: 'Give a total count',
            hintfontSize: 16,
            keyboardType: TextInputType.text,
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
                widget.selectedIndex != 3;
              });
              widget.pageController.animateToPage(3,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
          ),
        ]),
      ),
    );
  }
}
