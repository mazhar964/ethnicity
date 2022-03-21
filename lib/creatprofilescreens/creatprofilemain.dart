import 'package:ethnicity/creatprofilescreens/seniority_levels.dart';
import 'package:ethnicity/creatprofilescreens/setname.dart';
import 'package:ethnicity/creatprofilescreens/setprofile_image.dart';
import 'package:flutter/material.dart';

import 'ethnicity_stats.dart';
import 'gender_information.dart';
import 'no_employees.dart';

class MainCreatProfile extends StatefulWidget {
  const MainCreatProfile({ Key? key }) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:22.0),
        child: Column(
          children: [
          
 SizedBox(
              height: MediaQuery.of(context).size.height * 0.067,
            ),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
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
                                  ? const Color(0xffE74B99)
                                  : const Color(0xffD4D6F6),
                        
                        
                        
                        ),
                    height: 5,
                    width:selectedIndex == 0?  18:12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                       // color:  const Color(0xffD4D6F6),
                       borderRadius: BorderRadius.circular(6),
                         color: selectedIndex == 1
                                  ? const Color(0xffE74B99)
                                  : const Color(0xffD4D6F6),
                        
                        
                        
                        ),
                    height: 5,
                    width:selectedIndex == 1?  18:12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                       // color:  const Color(0xffD4D6F6),
                       borderRadius: BorderRadius.circular(6),
                         color: selectedIndex == 2
                                  ? const Color(0xffE74B99)
                                  : const Color(0xffD4D6F6),
                        
                        
                        
                        ),
                    height: 5,
                    width:selectedIndex == 2?  18:12,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                       // color:  const Color(0xffD4D6F6),
                       borderRadius: BorderRadius.circular(6),
                         color: selectedIndex == 3
                                  ? const Color(0xffE74B99)
                                  : const Color(0xffD4D6F6),
                        
                        
                        
                        ),
                    height: 5,
                    width:selectedIndex == 3?  18:12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                       // color:  const Color(0xffD4D6F6),
                       borderRadius: BorderRadius.circular(6),
                         color: selectedIndex == 4
                                  ? const Color(0xffE74B99)
                                  : const Color(0xffD4D6F6),
                        
                        
                        
                        ),
                    height: 5,
                    width:selectedIndex == 4?  18:12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                   Container(
                    decoration: BoxDecoration(
                       // color:  const Color(0xffD4D6F6),
                       borderRadius: BorderRadius.circular(6),
                         color: selectedIndex == 5
                                  ? const Color(0xffE74B99)
                                  : const Color(0xffD4D6F6),
                        
                        
                        
                        ),
                    height: 5,
                    width:selectedIndex == 5?  18:12,
                  ),
                ],
              ),
              Container(),
            ],
          ),
        

 Expanded(
                  child: PageView(
                controller: pageController,
                onPageChanged: (index) => onPageChanged(index: index),
                children:  [
                  SetName(pageController: pageController!, selectedIndex: 1,),
                   SetProfileImage(pageController: pageController!, selectedIndex: 2,),
                   NoEmployees(pageController: pageController!, selectedIndex: 3,),
                   GenderInformation(pageController: pageController!, selectedIndex: 4,),
                   EthnicityStats(pageController: pageController!, selectedIndex: 5,),
                   SeniorityLevel(pageController: pageController!, selectedIndex: 6,)
                ],
              )),


        ],
        
        ),
      ),
      
    );
  }
  void onPageChanged({required int index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}