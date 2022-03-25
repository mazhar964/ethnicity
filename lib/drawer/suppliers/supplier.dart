import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Widget/app_button_widget.dart';
import '../../Widget/input_field_widget.dart';
import '../../strings/string.dart';
import '../company_home_screen.dart';
import 'magentopartner.dart';

class Supplier extends StatefulWidget {
  const Supplier({Key? key}) : super(key: key);

  @override
  State<Supplier> createState() => _SupplierState();
}

class _SupplierState extends State<Supplier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            companyScaffoldKey.currentState!.openDrawer();
          },
          child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu_outlined,
                size: 25,
              )),
        ),
        backgroundColor: const Color(0xff181829),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  insetPadding: const EdgeInsets.all(22),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11.0))),
                  backgroundColor: const Color(0xff181829),
                  content: SizedBox(
                    // width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: const Color(0xff222232),
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
                        const Center(
                          child: Text(
                            "Invite a supplier",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: sourceSansSemiBold,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "Thank-you for subscribing the FREE ONE MONTH plan to invite 1 suppler to sumbit employee Ethnicity/Gender data",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xffFFFFFF).withOpacity(0.60),
                              fontFamily: sourceSansRegular,
                              fontSize: 14,
                            ),
                            maxLines: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InPutFieldWidget(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: 19.0, top: 14, bottom: 14, right: 14),
                            child: SvgPicture.asset(
                              'assets/images/message.svg',
                              // height: 4.0,
                              // width: 4.0,
                              // allowDrawingOutsideViewBox: true,
                              color: const Color(0xff65656B),
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                            top: 16,
                            bottom: 16,
                            left: 18,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xff181829),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillcolor: const Color(0xff222232),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff222232)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          hintColor: const Color(0xff707070),
                          hint: 'Invite via Email',
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        InPutFieldWidget(
                          width: double.infinity,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: 19.0, top: 14, bottom: 14, right: 14),
                            child: Image.asset(
                              'assets/images/Edit.png',
                              // height: 4.0,
                              // width: 4.0,
                              // allowDrawingOutsideViewBox: true,
                              color: const Color(0xff65656B),
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                            top: 16,
                            bottom: 16,
                            left: 18,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xff181829),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillcolor: const Color(0xff222232),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff222232)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          hintColor: const Color(0xff707070),
                          hint: 'Add Notes (Optional)',
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(height: 28),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 27.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppButton(
                                radius: 8,
                                // border:
                                //     Border.all(color: const Color(0xffE3EAF2)),
                                color: const Color(0xffF85F6A),
                                text: "Send Invite",
                                textColor: const Color(0xffFFFFFF),
                                height: 40,
                                width: 220,
                                onPressed: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => SignInScreen(

                                  //     ),
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.add_outlined,
                size: 25,
              ),
            ),
          ),
        ],
        centerTitle: false,
        titleSpacing: 0,
        title: const Text(
          'Supplier',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xffFFFFFF),
              fontFamily: sourceSansRegular,
              fontWeight: FontWeight.w400),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(children: [
          InPutFieldWidget(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  left: 19.0, top: 24, bottom: 24, right: 14),
              child: SvgPicture.asset(
                'assets/images/Search.svg',
                // height: 4.0,
                // width: 4.0,
                // allowDrawingOutsideViewBox: true,
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 23,
              bottom: 23,
              left: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff181829),
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            fillcolor: const Color(0xff222232),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff222232)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintColor: const Color(0xff707070),
            hint: 'Search by supplier business name',
            keyboardType: TextInputType.text,
          ),
          Flexible(
            child: ListView(
              children: [
                const SizedBox(height: 30),
                SupplierTile(
                  ontap: () {
                    Get.to(const MagentoPartner());
                  },
                ),
                const SizedBox(height: 8),
                const SupplierTile(),
                const SizedBox(height: 8),
                const SupplierTile(),
                const SizedBox(height: 8),
                const SupplierTile(),
                const SizedBox(height: 8),
                const SupplierTile(),
                const SizedBox(height: 8),
                const SupplierTile(),
                const SizedBox(height: 8),
                const SupplierTile(),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class SupplierTile extends StatelessWidget {
  const SupplierTile({
    Key? key,
    this.ontap,
  }) : super(key: key);
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Row(
            children: [
              Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  color: const Color(0xff222232),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/magento.png',

                    height: 22,
                    width: 22,
                    // allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Magento Solution Partner',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: sourceSansSemiBold,
                    ),
                  ),
                  Text(
                    'Employees: 3100',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff65656B),
                        fontFamily: sourceSansRegular,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 11),
        const Divider(
          thickness: 2,
          color: Color(0xff222232),
        )
      ],
    );
  }
}
