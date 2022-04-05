import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/input_field_widget.dart';
import '../auth_services/auth.dart';
import '../constants/constant.dart';
import '../strings/color_string.dart';
import '../strings/font_string.dart';
import '../strings/text_string.dart';

class SetName extends StatefulWidget {
  const SetName(
      {Key? key, required this.selectedIndex, required this.pageController})
      : super(key: key);
  final int selectedIndex;
  final PageController pageController;
  @override
  State<SetName> createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  String name = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1366,
            ),
            const Text(
              TextString.yourName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: Fonts.sourceSansSemiBold,
              ),
              maxLines: 2,
            ),
            InPutFieldWidget(
              validator: namevalidator,
              onChanged: (String? value) {
                setState(() {
                  name = value!;
                });
              },
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: ColorString.extralightGray.withOpacity(0.33),
                    width: 2.5),
              ),
              contentPadding: const EdgeInsets.only(bottom: 12),
              hintColor: ColorString.lightGray,
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
              hint: TextString.companyName,
              hintfontSize: 16,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 61,
            ),
            AppButton(
              radius: 6,
              color: ColorString.buttonColor,
              text: TextString.next,
              fontFamily: sourceSansSemiBold,
              textColor: Colors.white,
              height: 53,
              width: double.infinity,
              onPressed: () async {
                setState(() {
                  widget.selectedIndex != 1;
                });
                if (!_formKey.currentState!.validate()) return;
                AuthService.currentUser?.name = name;

                await FirebaseFirestore.instance
                    .doc("users/${AuthService.currentUser?.uid}")
                    .update({'name': AuthService.currentUser?.name});
                // Go.to(context, const CreateProfileImg());

                widget.pageController.animateToPage(1,
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
