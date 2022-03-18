import 'package:flutter/material.dart';

class CreateProfileTile extends StatelessWidget {
  const CreateProfileTile({
    Key? key,
    this.color,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.color5,
    this.width,
    this.width1,
    this.width2,
    this.width3,
    this.width4,
    this.width5,
  }) : super(key: key);
  final Color? color;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;

  final double? width;
  final double? width1;
  final double? width2;
  final double? width3;
  final double? width4;
  final double? width5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color ?? const Color(0xffD4D6F6),
                      borderRadius: BorderRadius.circular(8)),
                  height: 5,
                  width: width5 ?? 18,
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color1 ?? const Color(0xffD4D6F6),
                      borderRadius: BorderRadius.circular(8)),
                  height: 4,
                  width: width ?? 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color2 ?? const Color(0xffD4D6F6),
                      borderRadius: BorderRadius.circular(8)),
                  height: 4,
                  width: width1 ?? 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color3 ?? const Color(0xffD4D6F6),
                      borderRadius: BorderRadius.circular(8)),
                  height: 4,
                  width: width2 ?? 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color4 ?? const Color(0xffD4D6F6),
                      borderRadius: BorderRadius.circular(8)),
                  height: 4,
                  width: width3 ?? 12,
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color5 ?? const Color(0xffD4D6F6),
                      borderRadius: BorderRadius.circular(8)),
                  height: 4,
                  width: width4 ?? 12,
                ),
              ],
            ),
            Container(),
          ],
        ),
      ],
    );
  }
}
