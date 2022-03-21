
import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';


class CustomDrawerPageContent extends StatefulWidget {
  CustomDrawerPageContent({Key? key}) : super(key: key);

  @override
  State<CustomDrawerPageContent> createState() =>
      _CustomDrawerPageContentState();
}

class _CustomDrawerPageContentState extends State<CustomDrawerPageContent> {
  double addition = 0;
  

  PageController? pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => SlideDrawer.of(context)?.toggle(),
          child:const  Padding(
            padding:  EdgeInsets.only(left: 12.0),
            child: Icon(
  Icons.menu_outlined,

  size: 25,
)
          ),
        ),
      
        backgroundColor:const  Color(0xff181829),
        
        title: const Text(
          'Fantech Labs',
          style: TextStyle(
               fontSize: 17, color:  Color(0xffFFFFFF),
               fontFamily:sourceSansRegular, 
               fontWeight: FontWeight.w400
               
               ),
        ),
        // actions: [
        //   Container(
        //     margin:const EdgeInsets.all(12),
        //     decoration: BoxDecoration(
        //         border: Border.all(
        //           color: Colors.red,
        //         ),
        //         borderRadius: BorderRadius.circular(10)),
        //     child: InkWell(
        //       onTap: () async {
        //         // await Navigator.push(
        //         //   context,
        //         //   MaterialPageRoute(
        //         //       builder: (context) => const PortFolioStocks()),
        //         // );
        //         setState(() {});
        //       },
        //       child: const Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 10),
        //         child: Center(
        //           child: Text(
        //             "Portfolios",
        //             style: TextStyle(
        //                 color:Colors.red,
        //                 //fontFamily: kSofiaSemiBold,
        //                 fontSize: 12),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [


            
            const Text(
              'Total Balance',
              style: TextStyle(
                  color: Color(0xff9FA5BB),
                  //fontFamily: kSofiaRegular,
                  fontSize: 12),
            ),
            const SizedBox(height: 5),
            // StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            //     stream: FirebaseFirestore.instance
            //         .collection('portfolio')
            //         .where("userId", isEqualTo: AppStatic.currentUser.uid)
            //         .snapshots(),
            //     builder: (_, snapshotData) {
            //       if (!snapshotData.hasData || snapshotData.data?.size == 0) {
            //         return const SizedBox(
            //           child: Text(
            //             "\$0.0",
            //             style: TextStyle(
            //                 color: Color(0xff1B78B1),
            //               //  fontFamily: kSofiaRegular,
            //                 fontSize: 23),
            //           ),
            //         );
            //       }

                

            //        Text(
            //         "\$10",
            //         style: const TextStyle(
            //             color: Color(0xff1B78B1),
            //          //   fontFamily: kSofiaRegular,
            //             fontSize: 23),
            //       );
            //     }),
            Divider(color:const Color(0xff9FA5BB).withOpacity(0.35), thickness: 2),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        currentIndex == 0
                            ? "Portfolio Comparisons"
                            : "Portfolio Graphs",
                        style: const TextStyle(
                            color: Color(0xff2E3748),
                         //   fontFamily: kSofiaMedium,
                            fontSize: 17),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          pageController!.animateToPage(0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffF9F9F9),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 25,
                          // MediaQuery.of(context).size.height / 18,
                          width: 25,
                          // MediaQuery.of(context).size.height / 18,

                          child: const Icon(
                            Icons.chevron_left_outlined,
                            size: 25,
                            color: Color(0xffB4BDC2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          pageController!.animateToPage(1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffF9F9F9),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 25,
                          // MediaQuery.of(context).size.height / 18,
                          width: 25,
                          // MediaQuery.of(context).size.height / 18,

                          child: const Icon(
                            Icons.chevron_right_outlined,
                            size: 25,
                            color: Color(0xffB4BDC2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            // Expanded(
            //     child: PageView(
            //   onPageChanged: (index) {
            //     setState(() {
            //       currentIndex = index;
            //     });
            //   },
            //   controller: pageController,
            //   children: const [
            //     HoriZontalGraph(),
            //     UnaHomeVertical(),
            //   ],
            // )),
          ],
        ),
      ),
    );
  }
}
