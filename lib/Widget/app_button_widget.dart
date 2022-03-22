import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../strings/string.dart';

class AppButton extends StatelessWidget {
   const AppButton({
    Key? key,
    this.height,
    this.width,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onPressed,
    this.border,
    this.img,
    this.maxLines,
    this.fontSize,
    this.radius,
    this.isLeftAlign = false,
    this.fontFamily,
    this.fontWeight,
  }) : super(key: key);
  final bool isLeftAlign;
  final Color color;
  final String text;
  final String? img;
  final Color textColor;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? radius;
  final BoxBorder? border;
  final int? maxLines;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 15), border: border),
      height: height,
      width: width,
      child: MaterialButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 15),
        ),
        child: Row(
          mainAxisAlignment:
              isLeftAlign ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            img == null
                ? const Offstage()
                : SvgPicture.asset(
                    img!,
                    // height: 4.0,
                    // width: 4.0,
                    // allowDrawingOutsideViewBox: true,
                  ),
            SizedBox(width: isLeftAlign ? 16 : 9),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize ?? 18,
                fontWeight: fontWeight ?? FontWeight.w600,
                fontFamily: fontFamily ?? sourceSansRegular,
              ),
              maxLines: maxLines ?? 1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
