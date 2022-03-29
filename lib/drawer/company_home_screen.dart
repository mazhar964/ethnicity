import 'package:ethnicity/drawer/payment/payment.dart';
import 'package:ethnicity/strings/color_string.dart';
import 'package:ethnicity/strings/text_string.dart';

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
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                          TextString.fanlogo,
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
                    const SizedBox(
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
                imageUrl: TextString.homelogo,
                imgColor:
                    selectedindex == 0 ? Colors.white : ColorString.lightWhite,
                title: TextString.home,
                textColor:
                    selectedindex == 0 ? Colors.white : ColorString.lightWhite,
              ),
              const SizedBox(height: 33),
              DrawerRowWidget(
                onTap: () {
                  setState(() {
                    selectedindex = 1;
                  });
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                title: TextString.suppliers,
                imageUrl: TextString.supplyLogo,
                imgColor:
                    selectedindex == 1 ? Colors.white : ColorString.lightWhite,
                textColor:
                    selectedindex == 1 ? Colors.white : ColorString.lightWhite,
              ),
              const SizedBox(height: 33),
              DrawerRowWidget(
                onTap: () {
                  setState(() {
                    selectedindex = 2;
                  });
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                imageUrl: TextString.paymentLogo,
                imgColor:
                    selectedindex == 2 ? Colors.white : ColorString.lightWhite,
                textColor:
                    selectedindex == 2 ? Colors.white : ColorString.lightWhite,
                title: TextString.payments,
              ),
              const SizedBox(height: 33),
              DrawerRowWidget(
                onTap: () {
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                imageUrl: TextString.supportLogo,
                imgColor:
                    selectedindex == 3 ? Colors.white : ColorString.lightWhite,
                title: TextString.support,
                textColor:
                    selectedindex == 3 ? Colors.white : ColorString.lightWhite,
              ),
              const Spacer(),
              DrawerRowWidget(
                onTap: () {
                  companyScaffoldKey.currentState!.openEndDrawer();
                },
                imageUrl: TextString.signoutLogo,
                title: TextString.signUp,
                textColor: ColorString.extraRed,
                imgColor: ColorString.extraRed,
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
