// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#808080');

  static Color selectplangrey = fromHex('#333333');
  static Color aptcompletedblue = fromHex('#5DBFF7');
  static Color aptconfirmedGreen = fromHex('#AFC839');
  static Color aptUnpaidColorBookpurple = fromHex('#9B4FA4');

  static Color gray700 = fromHex('#666666');

  static Color blue900 = fromHex('#0019b1');

  static Color gray400 = fromHex('#b2b2b2');

  static Color gray500 = fromHex('#999999');

  static Color grayE500 = fromHex('#E5E5E5');

  static Color Yellow300 = fromHex('#FFB800');
  static Color IndigoAA700 = fromHex('#0024FF');

  static Color SelectPlan1 = fromHex('#001CC8');
  static Color SelectPlan2 = fromHex('#000000');

  static Color gray800 = fromHex('#4d4d4d');

  static Color gray100 = fromHex('#f5f5f5');

  static Color indigoA700 = fromHex('#0024ff');

  static Color GreyShade = fromHex('#4D4D4D');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray900 = fromHex('#333333');

  static Color indigo700 = fromHex('#38448e');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90026 = fromHex('#26000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  ButtonVariant? variant;
  setGradient() {
    {
      switch (variant) {
        default:
          return LinearGradient(
            begin: const Alignment(
              0,
              0,
            ),
            end: const Alignment(
              1,
              1,
            ),
            colors: [
              ColorConstant.indigoA700,
              ColorConstant.indigo700,
            ],
          );
      }
    }
  }
}

// 166, 218, 255, 1
const textFieldClr = Color.fromRGBO(239, 237, 237, 0.957);
const adminBlue = Color.fromRGBO(166, 218, 255, 1);
const appBLUE = Color.fromRGBO(0, 148, 255, 1);
const appBrownClr = Color.fromRGBO(69, 36, 37, 1);
const appYellowClr = Color.fromRGBO(255, 221, 101, 1);
const appBackgroundClr = Color.fromRGBO(255, 254, 242, 1);
const appheading = Color.fromRGBO(76, 76, 76, 1);
const appsmallheadingHint = Color.fromRGBO(128, 128, 128, 1);
const red = Color.fromRGBO(212, 0, 0, 1);
const blue = Color.fromRGBO(46, 44, 122, 1);
const borderClr = Color.fromRGBO(77, 77, 77, 1);
const themeColor = Color.fromRGBO(3, 0, 104, 1);
const GREEN_COLOR = Colors.green;
const AVTAR_COLOR = Color.fromARGB(255, 13, 86, 146);
const GREY_SHADE2 = Color.fromARGB(255, 235, 239, 237);
const GREY_SHADE = Color.fromARGB(255, 136, 138, 136);
const DARK_GREY_GREY = Color.fromARGB(255, 62, 63, 63);
const GREY_HEADING = Color.fromARGB(255, 122, 125, 124);
const appHeadingDark = Color.fromRGBO(76, 76, 76, 1);
const WHITE_COLOR = Colors.white;
const TOAST_BG_COLOR = Color(0xffc4c4c4);
const TOAST_TEXT_COLOR = Color(0xfff9f9f9);
const RED_COLOR = Color(0xfff20a0a);
const TEXTFIELD_BORDER_COLOR = Color(0xffC8C3D7);
const APP_TEXT_COLOR = Color(0xff342a5a);
const BLACK_COLOR = Colors.black;
const OTP_PIN_BOUNDARY_COLOR = Color(0xffD9D9D9);
const BUTTON_TEXT_COLOR = Color(0xff8f8f8f);
const LEFT_GRADIENT_COLOR = Color(0xff00C6FF);
const LEFT_GRADIENT_COLOR1 = Color.fromARGB(250, 234, 50, 17);
const RIGHT_GRADIENT_COLOR = Color.fromARGB(255, 26, 112, 218);
const C = Color.fromARGB(210, 163, 235, 236);

enum ButtonVariant {
  GradientIndigoA700Indigo700,
}
