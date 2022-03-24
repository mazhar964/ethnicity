import 'package:ethnicity/drawer/suppliers/supplier.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_drawer/slide_drawer.dart';

import '../Widget/drawer_row_widget.dart';
import '../strings/string.dart';
import 'payment/payment.dart';

class CustomDrawerContent extends StatefulWidget {
  const CustomDrawerContent({Key? key, required this.context})
      : super(key: key);
  final BuildContext context;

  @override
  State<CustomDrawerContent> createState() => _CustomDrawerContentState();
}

class _CustomDrawerContentState extends State<CustomDrawerContent> {
  // final ImagePicker _picker = ImagePicker();
  // String refName = 'UserImage';
  // File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222232),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
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
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      SlideDrawer.of(context)?.toggle();
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
              onTap: () {},
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
                Get.to(const Supplier());
              },
              title: 'Suppliers ',
              imageUrl: 'assets/images/supply.png',
            ),

            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {
                Get.to(const Payment());
              },
              imageUrl: 'assets/images/payment.png',
              title: 'Payments',
            ),

            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {},
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
  }
}
