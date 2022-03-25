import 'package:ethnicity/drawer/payment/payment.dart';

import 'package:flutter/material.dart';

import '../Widget/drawer_row_widget.dart';
import '../strings/string.dart';

import 'drawer_page_body.dart';
import 'suppliers/supplier.dart';

final GlobalKey<ScaffoldState> companyScaffoldKey = GlobalKey<ScaffoldState>();

class CompanyHmeScreen extends StatefulWidget {
  static const String routeName = 'Company_Home';

  const CompanyHmeScreen({Key? key}) : super(key: key);

  @override
  _CompanyHmeScreenState createState() => _CompanyHmeScreenState();
}

class _CompanyHmeScreenState extends State<CompanyHmeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: companyScaffoldKey,
      body: selectedindex == 0
          ? const CustomDrawerPageContent()
          : selectedindex == 1
              ? const Supplier()
              : selectedindex == 2
                  ? const Payment()
                  : selectedindex == 3
                      ? Container()
                      : Container(),
      drawer: Drawer(
        backgroundColor: const Color(0xff222232),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            top: 55,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 54),
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 26,
                        decoration: const BoxDecoration(
                            //  color: const Color(0xff222232),

                            //  borderRadius: BorderRadius.circular(12),

                            ),
                        child: Image.asset(
                          'assets/images/fanlogo.png',
                          height: 30,
                          width: 26,
                        )),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Fantech Labs",
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontFamily: sourceSansRegular,
                          fontSize: 18),
                    ),
                  const   SizedBox(
                      width: 100,
                    ),
                    // const Spacer(),
                    GestureDetector(
                      onTap: () {
                        companyScaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xff181829),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(
                          Icons.close_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 77),
              DrawerRowWidget(
                onTap: () {
                  setState(() {
                    selectedindex = 0;
                  });
                  companyScaffoldKey.currentState!.openEndDrawer();
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
                  });
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                title: 'Suppliers ',
                imageUrl: 'assets/images/supply.png',
              ),

              const SizedBox(height: 33),
              DrawerRowWidget(
                onTap: () {
                  setState(() {
                    selectedindex = 2;
                  });
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                imageUrl: 'assets/images/payment.png',
                title: 'Payments',
              ),

              const SizedBox(height: 33),
              DrawerRowWidget(
                onTap: () {
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                imageUrl: 'assets/images/support.png',
                title: 'Support',
              ),
              const Spacer(),
              DrawerRowWidget(
                onTap: () {
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
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
      ),
    );
  }
}
