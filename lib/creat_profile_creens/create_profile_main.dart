import 'package:ethnicity/creat_profile_creens/seniority_levels.dart';
import 'package:ethnicity/creat_profile_creens/set_name.dart';
import 'package:ethnicity/creat_profile_creens/setprofile_image.dart';
import 'package:ethnicity/strings/color_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ethnicity_stats.dart';
import 'gender_information.dart';
import 'no_employees.dart';

class MainCreatProfile extends StatefulWidget {
  const MainCreatProfile({Key? key}) : super(key: key);

  @override
  State<MainCreatProfile> createState() => _MainCreatProfileState();
}

class _MainCreatProfileState extends State<MainCreatProfile> {
  PageController? pageController;
  int selectedIndex = 0;

  //var color;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.067,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (selectedIndex == 0) {
                      Get.back();
                    }
                    selectedIndex--;
                    setState(() {});
                    pageController!.animateToPage(selectedIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      color: const Color(0xff222232),

                      borderRadius: BorderRadius.circular(12),
                      // shape: BoxShape.circle,
                      // color: checkBoxValueTwo
                      // ? const Color(0xff0A7302)
                      // : const Color(0xff898A8A)
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color:  const Color(0xffD4D6F6),
                        borderRadius: BorderRadius.circular(6),
                        color: selectedIndex == 0
                            ? ColorString.buttonColor
                            : ColorString.lightWhite,
                      ),
                      height: 4,
                      width: selectedIndex == 0 ? 18 : 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color:  const Color(0xffD4D6F6),
                        borderRadius: BorderRadius.circular(6),
                        color: selectedIndex == 1
                            ? ColorString.buttonColor
                            : ColorString.lightWhite,
                      ),
                      height: 4,
                      width: selectedIndex == 1 ? 18 : 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color:  const Color(0xffD4D6F6),
                        borderRadius: BorderRadius.circular(6),
                        color: selectedIndex == 2
                            ? ColorString.buttonColor
                            : ColorString.lightWhite,
                      ),
                      height: 4,
                      width: selectedIndex == 2 ? 18 : 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color:  const Color(0xffD4D6F6),
                        borderRadius: BorderRadius.circular(6),
                        color: selectedIndex == 3
                            ? ColorString.buttonColor
                            : ColorString.lightWhite,
                      ),
                      height: 4,
                      width: selectedIndex == 3 ? 18 : 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color:  const Color(0xffD4D6F6),
                        borderRadius: BorderRadius.circular(6),
                        color: selectedIndex == 4
                            ? ColorString.buttonColor
                            : ColorString.lightWhite,
                      ),
                      height: 4,
                      width: selectedIndex == 4 ? 18 : 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color:  const Color(0xffD4D6F6),
                        borderRadius: BorderRadius.circular(6),
                        color: selectedIndex == 5
                            ? ColorString.buttonColor
                            : ColorString.lightWhite,
                      ),
                      height: 4,
                      width: selectedIndex == 5 ? 18 : 12,
                    ),
                  ],
                ),
                Container(),
              ],
            ),
          ),
          Expanded(
              child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: (index) => onPageChanged(index: index),
            children: [
              SetName(
                pageController: pageController!,
                selectedIndex: 1,
              ),
              SetProfileImage(
                pageController: pageController!,
                selectedIndex: 2,
              ),
              NoEmployees(
                pageController: pageController!,
                selectedIndex: 3,
              ),
              GenderInformation(
                pageController: pageController!,
                selectedIndex: 4,
              ),
              EthnicityStats(
                pageController: pageController!,
                selectedIndex: 5,
              ),
              SeniorityLevel(
                pageController: pageController!,
                selectedIndex: 6,
              )
            ],
          )),
        ],
      ),
    );
  }

  void onPageChanged({required int index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}
