import 'package:flutter/material.dart';

import '../strings/string.dart';

class IndividualTile extends StatelessWidget {
  const IndividualTile({
    Key? key,
    required this.totalIndividual,
    required this.individualType,
  }) : super(key: key);
  final String totalIndividual;
  final String individualType;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xff222232),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 34.0, right: 34, top: 21, bottom: 21),
          child: Column(
            children: [
              Text(
                totalIndividual,
                style: const TextStyle(
                    fontSize: 36,
                    color: Color(0xffFFFFFF),
                    fontFamily: sourceSansRegular,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Text(
                individualType,
                style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xff979797),
                    fontFamily: sourceSansRegular,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}
