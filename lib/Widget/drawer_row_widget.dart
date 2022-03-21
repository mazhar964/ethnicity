import 'package:flutter/material.dart';


class DrawerRowWidget extends StatelessWidget {
  const DrawerRowWidget({
    Key? key,
    this.onTap,
    this.imageUrl,
    this.title,
    this.iconData,
    this.iconColor,
    this.imgColor,
    this.textColor,
  }) : super(key: key);

  final Function()? onTap;
  final String? imageUrl;
  final String? title;
  final IconData? iconData;
  final Color? iconColor;
  final Color? imgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          if (iconData != null)
            Icon(
              iconData,
              color: iconColor ?? Colors.blue,
            ),
          if (imageUrl != null)
            ImageIcon(
              AssetImage(
                imageUrl!,
              ),
              color: imgColor ?? const Color(0xff9FA5BB),
            ),
          const SizedBox(width: 13),
          Text(
            title ?? "",
            style: TextStyle(
                //fontFamily: AppFonts.alMedium,

                color: textColor ?? const Color(0xff9FA5BB),
               // fontFamily: kSofiaSemiBold,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
