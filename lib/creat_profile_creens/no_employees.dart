import 'package:flutter/material.dart';
import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';
import '../strings/color_string.dart';
import '../strings/font_string.dart';
import '../strings/text_string.dart';

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
              height: MediaQuery.of(context).size.height * 0.1366,
            ),
            const Text(
              TextString.noOfEmployees,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: Fonts.sourceSansSemiBold,
              ),
              maxLines: 2,
            ),
            InPutFieldWidget(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: ColorString.extralightGray.withOpacity(0.33),
                    width: 2.5),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: ColorString.extralightGray.withOpacity(0.33),
                    width: 2.5),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: ColorString.extralightGray.withOpacity(0.33),
                    width: 2.5),
              ),
              contentPadding: const EdgeInsets.only(bottom: 12),
              hintColor: ColorString.gray,
              hint: TextString.totalCount,
              hintfontSize: 16,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 66,
            ),
            AppButton(
              radius: 6,
              color: ColorString.buttonColor,
              text: TextString.next,
              fontFamily: Fonts.sourceSansSemiBold,
              textColor: Colors.white,
              height: 53,
              width: double.infinity,
              onPressed: () async {
                setState(() {
                  widget.selectedIndex != 3;
                });
                widget.pageController.animateToPage(3,
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
