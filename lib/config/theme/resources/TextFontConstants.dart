// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'textfont_constants.dart';

Text AppBoldFont(
    {@required String? msg,
    double? fontSize,
    int? maxLines,
    TextAlign? textAlign,
    Color? color}) {
  return Text(msg!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyleConstants.textFormFieldGILROYBold
          .copyWith(color: color, fontSize: fontSize));
}

Text AppLightFont(
    {@required String? msg,
    double? fontSize,
    int? maxLines,
    TextAlign? textAlign,
    Color? color}) {
  return Text(msg!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyleConstants.textFormFieldGILROYLight
          .copyWith(color: color, fontSize: fontSize));
}

Text AppMediumFont(
    {@required String? msg,
    double? fontSize,
    int? maxLines,
    TextAlign? textAlign,
    Color? color}) {
  return Text(msg!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyleConstants.textFormFieldGILROYMedium
          .copyWith(color: color, fontSize: fontSize));
}

Text AppRegularFont(
    {@required String? msg,
    double? fontSize,
    int? maxLines,
    TextAlign? textAlign,
    Color? color}) {
  return Text(msg!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyleConstants.textFormFieldGILROYRegular
          .copyWith(color: color, fontSize: fontSize));
}

Text AppSemiBoldFont(
    {@required String? msg,
    double? fontSize,
    int? maxLines,
    TextAlign? textAlign,
    Color? color}) {
  return Text(msg!,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyleConstants.textFormFieldGILROYSemiBOLD
          .copyWith(color: color, fontSize: fontSize));
}
