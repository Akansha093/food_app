// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'color_constant.dart';
import 'size_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleConstants {
  static TextStyle txtInterMedium15Gray600italic = GoogleFonts.lobster(
      textStyle: TextStyle(
    decoration: TextDecoration.underline,
    color: ColorConstant.black900,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static var appSmallHeadingText13 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: appsmallheadingHint,
          fontSize: 13));
  static var appBlueHeadingText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: blue, fontSize: 16));

  static var Text13Green = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: GREEN_COLOR, fontSize: 13));
  static var appRedHeadingText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: red, fontSize: 16));

  static var appSmallHeadingText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: appsmallheadingHint,
          fontSize: 16));
  static var appHeadingText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appBrownClr, fontSize: 16));
  static var appGreenText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(45, 225, 0, 1),
          fontSize: 16));

  static var appRedText12 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          color: Color.fromRGBO(193, 0, 0, 1),
          fontSize: 12));
  static var appHeadingBlueText14 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
          color: appBLUE,
          fontSize: 14));
  static var appHeadingBlueText12 = GoogleFonts.inter(
      textStyle: const TextStyle(
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w500,
          color: appBLUE,
          fontSize: 12));

  static var appBlueHeadingText12 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w600, color: blue, fontSize: 13));

  static var appHeadingText14 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w600, color: borderClr, fontSize: 14));

  static TextStyle typeAhedselectedfont = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray400,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: getVerticalSize(
      1.25,
    ),
  ));

  static var textFormFieldGILROYLight = const TextStyle(
    fontSize: 16,
    fontFamily: "GilroySmall",
  );

  static TextStyle txtInterMedium12Gray600 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray600,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));

  static var appSmallHeadingText14 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: appsmallheadingHint,
          fontSize: 14));

  static TextStyle txtColor19Gray600 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray600,
    fontSize: getFontSize(
      19,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtColor17Gray500 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));

  static TextStyle txtRobotoRegular16 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  ));

  static var textStyleWhitecolor18w600 = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: WHITE_COLOR),
  );

  static TextStyle textBlueColor14 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle textBlueColor15 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlueColor13 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlueColor16 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlueColor18 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlueColor20 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlueColor20bold = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  ));
  static TextStyle TextBlueColor20boldCenter = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.indigoA700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  ));
  static var textFormFieldGILROYMedium = const TextStyle(
    fontSize: 16,
    fontFamily: "GilroyMedium",
  );

  static TextStyle TextBlackColor20 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  ));

  static var appHeadingText24 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appheading, fontSize: 24));

  static TextStyle TextBlackColor22 = GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: GREY_SHADE,
    fontSize: 18,
    // fontSize: getFontSize(
    //   2,
    // ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  ));
  static TextStyle TextBlackColor19 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      19,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  ));
  static TextStyle TextBlackColor17 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlackColor16 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlackColor13 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextBlackColor12 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextWhiteColor15 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: WHITE_COLOR,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextWhiteColor13 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: WHITE_COLOR,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextWhiteColor17 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: WHITE_COLOR,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextWhiteColor20 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: WHITE_COLOR,
    fontSize: getFontSize(
      22,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));

  static TextStyle TextWhiteColor12 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle TextWhiteColor19 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: WHITE_COLOR,
    fontSize: getFontSize(
      19,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w800,
  ));
  static TextStyle TextBlackColor15 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: BLACK_COLOR,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  ));
  static TextStyle txtInterMedium14Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtInterMedium15Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtInterMedium16Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));

  static TextStyle txtInterMedium17Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.black87,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtInterMedium19Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.black87,
    fontSize: getFontSize(
      19,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));

  static TextStyle txtInterMedium20Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtInterMedium18Gray700 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtIntergrey12 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray500,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtIntergrey13 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray600,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtIntergrey15 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: GREY_SHADE,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtIntergrey16 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: GREY_SHADE,
    fontSize: getFontSize(
      16.5,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtIntergrey17 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: GREY_SHADE,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtIntergrey18 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.gray500,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  ));
  static TextStyle txtInterMedium24 = TextStyle(
    color: ColorConstant.blueGray900,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  );
  static TextStyle txtInterMedium20 = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: ColorConstant.blueGray900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  ));

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterMedium14 = TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static var textFormFieldRICCIONEREGULAR = const TextStyle(
    fontSize: 16,
    fontFamily: "GoogleFonts.inter",
  );

  static var textFormFieldGILROYBold = const TextStyle(
    fontSize: 16,
    fontFamily: "GilroyBold",
  );

  static var textStyleBlackcolor16w500 = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, color: BLACK_COLOR),
  );
  static var textStyleBlackcolor12w500 = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w500, color: BLACK_COLOR),
  );
  static var textgreencolor12w500 = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(31, 156, 0, 1)),
  );
  static var textStyleBlackcolor14w500 = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: BLACK_COLOR),
  );
  static var HeadingText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appHeadingDark, fontSize: 16));

  static var HeadingText14 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w400, color: GREY_SHADE, fontSize: 14));
  static var HeadingText16Blue = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appBLUE, fontSize: 16));

  static var HeadingText12 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appHeadingDark, fontSize: 12));

  static var textFormFieldGILROYRegular = const TextStyle(
    fontSize: 16,
    fontFamily: "GilroySmall",
  );

  static var textFormFieldGILROYSemiBOLD = const TextStyle(
    fontSize: 16,
    fontFamily: "GilroySmall",
  );

  static var appBarText16 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appheading, fontSize: 16));
  static var appBarText14 = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: appheading, fontSize: 14));
}
