import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../strings/string.dart';

class DownloadLogo extends StatelessWidget {
  const DownloadLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(children: [
          const SizedBox(height: 68),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: const Color(0xff222232),

                  borderRadius: BorderRadius.circular(6),
                  // shape: BoxShape.circle,
                  // color: checkBoxValueTwo
                  // ? const Color(0xff0A7302)
                  // : const Color(0xff898A8A)
                ),
                child: const Icon(
                  Icons.close_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: const Color(0xff222232),
                  borderRadius: BorderRadius.circular(6),
                  // shape: BoxShape.circle,
                  // color: checkBoxValueTwo
                  // ? const Color(0xff0A7302)
                  // : const Color(0xff898A8A)
                ),
                child: const Icon(
                  Icons.file_download_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 43,
          ),
          Image.asset(
            'assets/images/download.png',
            height: 321,
            width: 321,
          ),
          const Flexible(
            child: Text(
              "Download the Ethi-Gen logo and put it on your website/advertising material. Show stakeholders that you are pro-active when it comes to diversity monitoring.",
              style: TextStyle(
                color: Color(0xffB5B5B5),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          AppButton(
            radius: 6,
            color: const Color(0xffF85F6A),
            text: "Download the Ethni-gen Logo",
            fontFamily: sourceSansSemiBold,
            fontWeight: FontWeight.w600,
            textColor: const Color(0xffFFFFFF),
            height: 53,
            width: double.infinity,
            onPressed: () async {},
          ),
        ]),
      ),
    );
  }
}
