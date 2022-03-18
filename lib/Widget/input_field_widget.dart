import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';

class InPutFieldWidget extends StatelessWidget {
  const InPutFieldWidget({
    Key? key,
    this.keyboardType,
    this.hint = '',
    this.labelText = '',
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.textCapitalization = TextCapitalization.none,
    this.isPassword = false,
    this.onUserFocus,
    this.hintColor = const Color(0xff9FA5BB),
    this.border,
    this.controller,
    this.prefixIcon,
    this.contentPadding,
    this.hintfontSize,
    this.width,
    this.enabledBorder,
    this.focusedBorder,
  }) : super(key: key);

  final String hint, labelText;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final Function()? onUserFocus;
  final Color hintColor;
  final InputBorder? border;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final double? hintfontSize;
  final double? width;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        //expands: true,
        cursorColor: const Color(0xff65656B),
        style: const TextStyle(
            color: Color(0xffFFFFFF), fontFamily: sourceSansRegular),
        onChanged: onChanged,
        validator: validator,
        controller: controller,
        obscureText: isPassword,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          fillColor: const Color(0xff181829),
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          isDense: true,

          contentPadding: contentPadding ??
              const EdgeInsets.only(bottom: 12, left: 16, top: 12),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xff979797),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
          // border: border ??
          //     OutlineInputBorder(
          //       borderSide: const BorderSide(color: Color(0xffFFFFFF)),
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          hintText: hint,

          hintStyle: TextStyle(
            color: hintColor,
            fontFamily: sourceSansRegular,
            fontSize: hintfontSize ?? 14,
            //   fontWeight: FontWeight.w600
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
              color: Color(0xffFFFFFF),
              //fontFamily: sfRegular,

              fontSize: 17),

          // Color(0xff2E3748 ),
        ),
      ),
    );
  }
}
