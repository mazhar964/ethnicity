import 'package:ethnicity/strings/string.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widget/individual_widget.dart';
import 'company_home_screen.dart';

class CustomDrawerPageContent extends StatefulWidget {
  const CustomDrawerPageContent({Key? key}) : super(key: key);

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
          onTap: () {
            companyScaffoldKey.currentState!.openDrawer();
          },
          child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu_outlined,
                size: 22,
              )),
        ),
        backgroundColor: const Color(0xff181829),
        centerTitle: false,
        titleSpacing: 0,
        title: const Text(
          'Fantech Labs',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xffFFFFFF),
              fontFamily: sourceSansRegular,
              fontWeight: FontWeight.w400),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: const  [
                  Expanded(
                      child: IndividualTile(
                    totalIndividual: '205',
                    individualType: 'Employees',
                  )),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                      child: IndividualTile(
                    individualType: 'Suppliers',
                    totalIndividual: '07',
                  )),
                ],
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
                          height: 35,
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
                            const SizedBox(width: 30),
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
                              'Black Caribbean',
                              style: TextStyle(
                                color: Color(0xff979797),
                                fontFamily: sourceSansRegular,
                              ),
                            ),
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
                              color: const Color(0xffFFFFFF).withOpacity(0.83),
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
                              color: const Color(0xffFFFFFF).withOpacity(0.83),
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
                            const SizedBox(width: 30),
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
                              'Black Caribbean',
                              style: TextStyle(
                                color: Color(0xff979797),
                                fontFamily: sourceSansRegular,
                              ),
                            ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
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
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      const fontSize = 14.0;
      const radius = 100.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
              color: const Color(0xffFBBB00),
              value: 72,
              title: '70%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontFamily: sourceSansRegular,
                color: Color(0xffffffff),
              ));
        case 1:
          return PieChartSectionData(
              color: const Color(0xffF85F6A),
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
            color: const Color(0xffFA7700),
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

class BarChatTile extends StatelessWidget {
  const BarChatTile({
    Key? key,
    required this.text,
    this.value,
  }) : super(key: key);
  final String text;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(3)),
          child: LinearProgressIndicator(
            minHeight: 40,
            value: value,
            backgroundColor: const Color(0xffF85F6A).withOpacity(0.10),
            valueColor: const AlwaysStoppedAnimation<Color>(
              Color(0xffF85F6A),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 12.0, bottom: 12),
          child: Text(
            text,
            style: const TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: sourceSansRegular,
                fontWeight: FontWeight.w400,
                fontSize: 14),
          ),
        )
      ],
    );
  }
}
