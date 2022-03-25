import 'package:ethnicity/drawer/payment/payment.dart';
import 'package:ethnicity/wellcomScreen/wellcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:slide_drawer/slide_drawer.dart';

import '../Widget/drawer_row_widget.dart';
import '../strings/string.dart';
import 'drawer_content.dart';
import 'suppliers/supplier.dart';

GlobalKey<ScaffoldState> companyScaffoldKey = GlobalKey<ScaffoldState>();

class CompanyHmeScreen extends StatefulWidget {
  static const String routeName = 'Company_Home';

  const CompanyHmeScreen({required Key key}) : super(key: key);

  @override
  _CompanyHmeScreenState createState() => _CompanyHmeScreenState();
}

class _CompanyHmeScreenState extends State<CompanyHmeScreen> {
  // FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  int selectedindex = 0;
  //late StreamSubscription statusListener;
  // final proController = Get.put(PurchaseController());

  // @override
  // void initState() {
  //   _landToOnboarding();
  //   Future.delayed(Duration(seconds: 1)).whenComplete(() async {
  //     loadNotifi();
  //     getCurrentLocation();
  //     NotificationsSubscription.showNotification();
  //     await NotificationsSubscription.fcmSubscribe();
  //   });
  //   setIndex();
  //   super.initState();
  // }

  setIndex() {
    setState(() {});
  }

  // @override
  // void dispose() {
  //   statusListener.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0XFFE5E5E5),
      body: selectedindex == 0
          ? CustomDrawerContent(
              context: context,
            )
          : selectedindex == 1
              ? const Supplier()
              : selectedindex == 2
                  ? Wellcom()
                  : selectedindex == 3
                      ? Container()
                      : Container(),
      // appBar: AppBar(
      //   title: const Text('Drawer Demo'),
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 77),
            DrawerRowWidget(
              onTap: () {
                setState(() {
                  selectedindex = 0;
                  companyScaffoldKey.currentState!.openEndDrawer();
                });
              },
              // iconData: Icons.home_outlined,
              // iconColor: Colors.white,

              imageUrl: 'assets/images/home.png',
              imgColor: Colors.white,
              title: 'Home',
              textColor: Colors.white,
            ),
            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {
                setState(() {
                  selectedindex = 1;
                  companyScaffoldKey.currentState!.openEndDrawer();
                });
              },
              title: 'Suppliers ',
              imageUrl: 'assets/images/supply.png',
            ),

            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {},
              imageUrl: 'assets/images/payment.png',
              title: 'Payments',
            ),

            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {
                setState(() {
                  selectedindex = 0;
                  companyScaffoldKey.currentState!.openEndDrawer();
                });
              },
              imageUrl: 'assets/images/support.png',
              title: 'Support',
            ),
            const Spacer(),
            DrawerRowWidget(
              onTap: () {},
              imageUrl: 'assets/images/signout.png',
              title: 'Sign Out',
              textColor: const Color(0xffD1160F),
              imgColor: const Color(0xffD1160F),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    );

    //   Scaffold(
    //       key: companyScaffoldKey,
    //       drawer: Column(
    //       crossAxisAlignment: CrossAxisAlignment.,
    //         children: [
    //           Container(
    //             height: double.infinity,
    //             color: Colors.white,
    //             width: MediaQuery.of(context).size.width * 0.85,
    //             child: Padding(
    //               padding: const EdgeInsets.all(20.0),
    //               child: SingleChildScrollView(
    //                 physics: const BouncingScrollPhysics(),
    //                 child: Container(
    //                   child: Column(
    //                     children: [
    //                       SizedBox(
    //                           height: MediaQuery.of(context).size.height / 3.5),
    //                       const SizedBox(height: 54),
    //                       Padding(
    //                         padding: const EdgeInsets.only(right: 100.0),
    //                         child: Row(
    //                           children: [
    //                             Container(
    //                                 height: 30,
    //                                 width: 26,
    //                                 decoration: const BoxDecoration(),
    //                                 child: Image.asset(
    //                                   'assets/images/fanlogo.png',
    //                                   height: 30,
    //                                   width: 26,
    //                                 )),
    //                             const SizedBox(
    //                               width: 7,
    //                             ),
    //                             const Text(
    //                               "Fantech Labs",
    //                               style: TextStyle(
    //                                   color: Color(0xff979797),
    //                                   fontFamily: sourceSansRegular,
    //                                   fontSize: 18),
    //                             ),
    //                             const Spacer(),
    //                             GestureDetector(
    //                               onTap: () {
    //                                 SlideDrawer.of(context)?.toggle();
    //                               },
    //                               child: Container(
    //                                 height: 24,
    //                                 width: 24,
    //                                 decoration: BoxDecoration(
    //                                   color: const Color(0xff181829),
    //                                   borderRadius: BorderRadius.circular(4),
    //                                 ),
    //                                 child: const Icon(
    //                                   Icons.close_outlined,
    //                                   color: Colors.white,
    //                                   size: 15,
    //                                 ),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),

    //                       const SizedBox(height: 77),
    //                       DrawerRowWidget(
    //                         onTap: () {
    //                           setState(() {
    //                             selectedindex = 0;
    //                             companyScaffoldKey.currentState!.openEndDrawer();
    //                           });
    //                         },
    //                         // iconData: Icons.home_outlined,
    //                         // iconColor: Colors.white,

    //                         imageUrl: 'assets/images/home.png',
    //                         imgColor: Colors.white,
    //                         title: 'Home',
    //                         textColor: Colors.white,
    //                       ),
    //                       const SizedBox(height: 33),
    //                       DrawerRowWidget(
    //                         onTap: () {
    //                           setState(() {
    //                             selectedindex = 1;
    //                             companyScaffoldKey.currentState!.openEndDrawer();
    //                           });
    //                         },
    //                         title: 'Suppliers ',
    //                         imageUrl: 'assets/images/supply.png',
    //                       ),

    //                       const SizedBox(height: 33),
    //                       DrawerRowWidget(
    //                         onTap: () {},
    //                         imageUrl: 'assets/images/payment.png',
    //                         title: 'Payments',
    //                       ),

    //                       const SizedBox(height: 33),
    //                       DrawerRowWidget(
    //                         onTap: () {
    //                           setState(() {
    //                             selectedindex = 0;
    //                             companyScaffoldKey.currentState!.openEndDrawer();
    //                           });
    //                         },
    //                         imageUrl: 'assets/images/support.png',
    //                         title: 'Support',
    //                       ),
    //                       const Spacer(),
    //                       DrawerRowWidget(
    //                         onTap: () {},
    //                         imageUrl: 'assets/images/signout.png',
    //                         title: 'Sign Out',
    //                         textColor: const Color(0xffD1160F),
    //                         imgColor: const Color(0xffD1160F),
    //                       ),
    //                       SizedBox(
    //                           height: MediaQuery.of(context).size.height * 0.1),
    //                       // const SizedBox(height: 50),

    //                       // DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     setState(() {
    //                       //       StaticData.comapnyTabIndex = 0;
    //                       //       companyScaffoldKey.currentState!.openEndDrawer();
    //                       //     }
    //                       //     );
    //                       //   },
    //                       //   color: StaticData.comapnyTabIndex == 0
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.black,
    //                       //   iconColor: StaticData.comapnyTabIndex == 0
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.grey,
    //                       //   elevation: StaticData.comapnyTabIndex == 0 ? 2 : 0,
    //                       //   title: 'Chat',
    //                       //   icon: 'assets/svg/chat.svg',
    //                       // ),
    //                       // DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     Navigator.push(context, MaterialPageRoute(
    //                       //         builder: (BuildContext context) {
    //                       //       return JobsNearYou();
    //                       //     }));
    //                       //   },
    //                       //   color: Colors.black,
    //                       //   iconColor: Colors.grey,
    //                       //   elevation: 0,
    //                       //   title: 'Jobs near you',
    //                       //   icon: 'assets/svg/jobs.svg',
    //                       // ),
    //                       // DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     setState(() {
    //                       //       StaticData.comapnyTabIndex = 1;
    //                       //       companyScaffoldKey.currentState.openEndDrawer();
    //                       //     });
    //                       //   },
    //                       //   elevation: StaticData.comapnyTabIndex == 1 ? 2 : 0,
    //                       //   title: 'Manage Jobs',
    //                       //   jobs: totalActiveJobs,
    //                       //   icon: 'assets/svg/orders.svg',
    //                       //   color: StaticData.comapnyTabIndex == 1
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.black,
    //                       //   iconColor: StaticData.comapnyTabIndex == 1
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.grey,
    //                       // ),
    //                       // DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     setState(() {
    //                       //       StaticData.comapnyTabIndex = 2;
    //                       //       companyScaffoldKey.currentState.openEndDrawer();
    //                       //     });
    //                       //   },
    //                       //   color: StaticData.comapnyTabIndex == 2
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.black,
    //                       //   iconColor: StaticData.comapnyTabIndex == 2
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.grey,
    //                       //   elevation: StaticData.comapnyTabIndex == 2 ? 2 : 0,
    //                       //   title: 'Profile',
    //                       //   mIcon: Icons.person_outlined,
    //                       // ),
    //                       // DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     setState(() {
    //                       //       StaticData.comapnyTabIndex = 3;
    //                       //       companyScaffoldKey.currentState.openEndDrawer();
    //                       //     });
    //                       //   },
    //                       //   color: StaticData.comapnyTabIndex == 3
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.black,
    //                       //   iconColor: StaticData.comapnyTabIndex == 3
    //                       //       ? ColorReferences.blueColor
    //                       //       : Colors.grey,
    //                       //   elevation: StaticData.comapnyTabIndex == 3 ? 2 : 0,
    //                       //   title: 'Settings',
    //                       //   icon: 'assets/svg/settings.svg',
    //                       // ),
    //                       // !StaticData.userModel.isPro
    //                       //     ? DrawerLIstTile(
    //                       //         onSelect: () async {
    //                       //           await Navigator.push(context,
    //                       //               MaterialPageRoute(
    //                       //                   builder: (BuildContext context) {
    //                       //             return SubscriptionScreen();
    //                       //           }));
    //                       //           // setState(() {
    //                       //           //   companyScaffoldKey.currentState.openEndDrawer();
    //                       //           // });
    //                       //         },
    //                       //         color: StaticData.comapnyTabIndex == 4
    //                       //             ? ColorReferences.blueColor
    //                       //             : Colors.black,
    //                       //         iconColor: StaticData.comapnyTabIndex == 4
    //                       //             ? ColorReferences.blueColor
    //                       //             : Colors.grey,
    //                       //         elevation:
    //                       //             StaticData.comapnyTabIndex == 4 ? 2 : 0,
    //                       //         title: 'Subscription',
    //                       //         icon: 'assets/svg/location.svg',
    //                       //       )
    //                       //     : Offstage(),
    //                       // Divider(color: Colors.black),
    //                       // DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     Share.share('www.werkly.net/welcome');
    //                       //   },
    //                       //   color: Colors.black,
    //                       //   elevation: 0,
    //                       //   title: 'Tell a Friend',
    //                       //   icon: 'assets/svg/share.svg',
    //                       // ),
    //                       //  DrawerLIstTile(
    //                       //   onSelect: () {
    //                       //     _showContactSupport();
    //                       //   },
    //                       //   color: Colors.black,
    //                       //   elevation: 0,
    //                       //   title: 'Help and Support',
    //                       //   icon: 'assets/svg/feedback.svg',
    //                       // ),
    //                       // SizedBox(height: 30),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           //   Container(
    //           //     width: MediaQuery.of(context).size.width * 0.85,
    //           //     height: MediaQuery.of(context).size.height / 3.5,
    //           //     decoration:const  BoxDecoration(
    //           //         image: DecorationImage(
    //           //             fit: BoxFit.fill,
    //           //             image: AssetImage('assets/svg/BG.png'))),
    //           //     child: Padding(
    //           //       padding: const EdgeInsets.symmetric(horizontal: 20),
    //           //       child: Column(
    //           //         mainAxisAlignment: MainAxisAlignment.start,
    //           //         children: [
    //           //           Row(
    //           //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           //             children: [
    //           //               IconButton(
    //           //                 icon: SvgPicture.asset(SVGReferences.menuSVG),
    //           //                 onPressed: () async {
    //           //                   setState(() {
    //           //                     companyScaffoldKey.currentState.openEndDrawer();
    //           //                   });
    //           //                 },
    //           //               ),
    //           //               Padding(
    //           //                 padding: const EdgeInsets.only(top: 50),
    //           //                 child: GestureDetector(
    //           //                   onTap: () {},
    //           //                   child: Container(
    //           //                     width: MediaQuery.of(context).size.width / 5.5,
    //           //                     height: MediaQuery.of(context).size.width / 5.5,
    //           //                     child: StaticData.userModel.imageUrl == null
    //           //                         ? Icon((Icons.person))
    //           //                         : AppCacheImage(
    //           //                             imageUrl: StaticData.userModel.imageUrl,
    //           //                             round: 50,
    //           //                             width: MediaQuery.of(context).size.width /
    //           //                                 5.5,
    //           //                             height:
    //           //                                 MediaQuery.of(context).size.width /
    //           //                                     5.5,
    //           //                             index: 2,
    //           //                           ),
    //           //                   ),
    //           //                 ),
    //           //               ),
    //           //               IconButton(
    //           //                 onPressed: () {
    //           //                   setState(() {
    //           //                     companyScaffoldKey.currentState.openDrawer();
    //           //                   });
    //           //                 },
    //           //                 icon: SvgPicture.asset(
    //           //                   SVGReferences.menuSVG,
    //           //                   color: Colors.transparent,
    //           //                 ),
    //           //               ),
    //           //             ],
    //           //           ),
    //           //           SizedBox(height: 10),
    //           //           Container(
    //           //             color: Colors.transparent,
    //           //             child: Row(
    //           //               mainAxisAlignment: MainAxisAlignment.center,
    //           //               children: [
    //           //                 Text(
    //           //                   StaticData?.userModel?.userName == null
    //           //                       ? ""
    //           //                       : (StaticData.userModel.userName?.characters
    //           //                                       ?.length ??
    //           //                                   0) >=
    //           //                               23
    //           //                           ? "${StaticData.userModel.userName.replaceFirst(StaticData.userModel.userName.characters.first, StaticData.userModel.userName.characters.first.toUpperCase()).substring(0, 23)}..."
    //           //                           : "${StaticData.userModel.userName.replaceFirst(StaticData.userModel.userName.characters.first, StaticData.userModel.userName.characters.first.toUpperCase())}",
    //           //                   style: TextStyle(
    //           //                       color: Colors.white,
    //           //                       fontSize: 17,
    //           //                       fontWeight: FontWeight.w600,
    //           //                       fontFamily: FontsReferences.Open_Sans),
    //           //                 ),
    //           //               ],
    //           //             ),
    //           //           ),
    //           //           SizedBox(height: 5),
    //           //           Row(
    //           //             mainAxisAlignment: MainAxisAlignment.center,
    //           //             children: [
    //           //               Expanded(
    //           //                 child: Text(
    //           //                   StaticData.userModel.description ?? "",
    //           //                   overflow: TextOverflow.visible,
    //           //                   maxLines: 1,
    //           //                   textAlign: TextAlign.center,
    //           //                   style: TextStyle(
    //           //                       color: Colors.white,
    //           //                       fontSize: 15,
    //           //                       fontWeight: FontWeight.w400,
    //           //                       fontFamily: FontsReferences.Open_Sans),
    //           //                 ),
    //           //               ),
    //           //             ],
    //           //           )
    //           //         ],
    //           //       ),
    //           //     ),
    //           //   ),
    //         ],
    //       ),
    //       backgroundColor: const Color(0XFFE5E5E5),
    //       body: selectedindex == 0
    //           ? CustomDrawerContent(
    //               context: context,
    //             )
    //           : selectedindex == 1
    //               ? const Supplier()
    //               : selectedindex == 2
    //                   ? Wellcom()
    //                   : selectedindex == 3
    //                       ? Container()
    //                       : Container());
  }
}
