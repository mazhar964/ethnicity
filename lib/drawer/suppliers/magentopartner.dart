import 'package:ethnicity/strings/string.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widget/individualwidget.dart';
import '../drawer_page_body.dart';

class MagentoPartner extends StatefulWidget {
  const MagentoPartner({Key? key}) : super(key: key);

  @override
  State<MagentoPartner> createState() => _MagentoPartnerState();
}

class _MagentoPartnerState extends State<MagentoPartner> {
  double addition = 0;

  PageController? pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              )),
        ),
        backgroundColor: const Color(0xff181829),
        centerTitle: true,
        title: const Text(
          'Magento Solution Partner',
          style: TextStyle(
              fontSize: 16,
              color: Color(0xffFFFFFF),
              fontFamily: sourceSansSemiBold,
              fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 27),
                const IndividualTile(
                  totalIndividual: '205',
                  individualType: 'Employees',
                ),
                const SizedBox(height: 28),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff222232),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ethnicity stats",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontFamily: ibmPlexRegular,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/magentopartner.png',
                                height: 19,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text(
                                "Magento solution partner",
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontFamily: sourceSansRegular,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 39,
                          ),
                          AspectRatio(
                            aspectRatio: 1.5,
                            child: PieChart(
                              PieChartData(
                                  // centerSpaceColor: Colors.red,
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 1,
                                  sections: showingSections()),
                            ),
                          ),
                          const SizedBox(
                            height: 37,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffF85F6A),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'White & Asians',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffACB9FF),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'Pakistani',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffFA8AD4),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'White Scottish',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffA8698A),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'Black Caribbean',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffF4B536),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'American Indian',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 29),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff222232),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Employees level of seniority ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontFamily: ibmPlexRegular,
                            ),
                          ),
                          const SizedBox(height: 19),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.83),
                                size: 16,
                              ),
                              const Text(
                                "Directors",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontFamily: sourceSansSemiBold,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.83),
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          AspectRatio(
                            aspectRatio: 1.5,
                            child: PieChart(
                              PieChartData(
                                  // centerSpaceColor: Colors.red,
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 1,
                                  sections: showingSections()),
                            ),
                          ),
                          const SizedBox(
                            height: 37,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffFBBB00),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'White & Asians',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffFA7700),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'Pakistani',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xff977000),
                                ),
                                height: 4,
                                width: 18,
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                'White Scottish',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontFamily: sourceSansRegular,
                                ),
                              ),
                              // const SizedBox(width: 30),
                              // Container(
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(6),
                              //     color: const Color(0xffF85F6A),
                              //   ),
                              //   height: 4,
                              //   width: 18,
                              // ),
                              // const SizedBox(width: 9),
                              // const Text(
                              //   'Black Caribbean',
                              //   style: TextStyle(
                              //     color: Color(0xff979797),
                              //     fontFamily: sourceSansRegular,
                              //   ),
                              // ),
                            ],
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff222232),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ethnicity stats",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              fontFamily: ibmPlexRegular,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/fanlogo.png',
                                height: 19,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text(
                                "Fantech Labs",
                                style: TextStyle(
                                    color: Color(0xff979797),
                                    fontFamily: sourceSansRegular,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 9.0),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 17,
                                ),
                                BarChatTile(
                                  text: "Men (90%)",
                                  value: 0.8,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                BarChatTile(
                                  text: "Women (9.6%)",
                                  value: 0.11,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                BarChatTile(
                                  text: "Non-binary (0%)",
                                  value: 0,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                BarChatTile(
                                  text: "Gender fluid  (0%)",
                                  value: 0,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                BarChatTile(
                                  text: "Transgender  (0.4%)",
                                  value: 0.04,
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(5, (i) {
      const fontSize = 14.0;
      const radius = 100.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
              color: const Color(0xffF85F6A),
              value: 50,
              title: '50%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontFamily: sourceSansRegular,
                color: Color(0xffffffff),
              ));
        case 1:
          return PieChartSectionData(
              color: const Color(0xffF4B536),
              value: 15,
              title: '10%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              ));
        case 2:
          return PieChartSectionData(
            color: const Color(0xff977000),
            value: 15,
            title: '10%',
            radius: radius,
            titleStyle: const TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xffA8698A),
            value: 15,
            title: '10%',
            radius: radius,
            titleStyle: const TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          );
        case 4:
          return PieChartSectionData(
            color: const Color(0xffACB9FF),
            value: 15,
            title: '10%',
            radius: radius,
            titleStyle: const TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
