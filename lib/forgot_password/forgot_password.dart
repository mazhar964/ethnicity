import 'package:flutter/material.dart';

import '../strings/font_string.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String email = '';

  final _key = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 25,
                color: Colors.white,
              )),
        ),
        backgroundColor: const Color(0xff181829),
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0),
        child: SingleChildScrollView(
            child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.5,
              ),
              const Text(
                "Forget Password",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: Fonts.sourceSansBold,
                    fontSize: 27),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Enter your email for the verification process we will send a reset link to your email",
                  style: TextStyle(
                      color: Color(0xff65656B),
                      fontFamily: Fonts.sourceSansRegular,
                      fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10.5,
              ),
              TextFormField(
                controller: controllerEmail,
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Color(0xffFFFFFF),
                  fontFamily: Fonts.sourceSansRegular,
                ),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: Fonts.sourceSansBold,
                      fontSize: 20),
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(
                      color: Color(0xff65656B),
                      fontFamily: Fonts.sourceSansRegular,
                      fontSize: 12),
                ),
                onChanged: (value) {
                  email = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9-]+.[a-z]")
                      .hasMatch(value)) {
                    return 'Please a valid Email';
                  }
                  return null;
                },

                // keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 23,
              ),
              const SizedBox(height: 23),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 55,
                width: double.infinity,
                child: MaterialButton(
                    color: const Color(0xffF85F6A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Send Email",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: Fonts.sourceSansRegular,
                          fontSize: 16),
                    ),
                    onPressed: () {
                      if (_key.currentState!.validate()) {}
                    }),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back to login",
                  style: TextStyle(
                      color: Color(0xffC5CCD7),
                      fontFamily: Fonts.sourceSansSemiBold,
                      fontSize: 11),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
