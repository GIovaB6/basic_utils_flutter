import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {

  static Color lightGreen = fromHex('#E1F5E2');

  static Color lightBlue = fromHex('#3478F6');

  static Color green300 = fromHex('#6fcf97');

  static Color green200 = fromHex('#9add9f');

  static Color green100 = fromHex('#a6e7d3');

  static Color blueGray90019 = fromHex('#192b2b2b');

  static Color lightBlue300 = fromHex('#56ccf2');

  static Color deepPurple400 = fromHex('#9554b7');

  static Color gray30059 = fromHex('#59e3e5e8');

  static Color black9003f = fromHex('#3f000000');

  static Color green700 = fromHex('#438f38');

  static Color gray50 = fromHex('#f9f9f9');

  static Color teal100 = fromHex('#a6e6d3');

  static Color gray900A3 = fromHex('#a3181818');

  static Color green2004c = fromHex('#4c9add9f');

  static Color black90001 = fromHex('#0b0404');

  static Color teal500 = fromHex('#03a089');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color lightBlueA700 = fromHex('#037ee5');

  static Color blueGray90001 = fromHex('#333333');

  static Color teal500A2 = fromHex('#a203a089');

  static Color blueGray900 = fromHex('#2d3047');

  static Color gray8005b = fromHex('#5b3c3c43');

  static Color gray50Ef = fromHex('#eff9f9f9');

  static Color gray400 = fromHex('#b5b5b7');

  static Color black9000a = fromHex('#0a000000');

  static Color gray500 = fromHex('#999999');

  static Color blueGray400 = fromHex('#8a8d97');

  static Color redA200 = fromHex('#ff6161');

  static Color gray90001 = fromHex('#181818');

  static Color blueGray500 = fromHex('#767e8b');

  static Color gray900 = fromHex('#181725');

  static Color blue600 = fromHex('#0f77f0');

  static Color teal50001 = fromHex('#00a58e');

  static Color amber300 = fromHex('#f2c94c');

  static Color gray80099 = fromHex('#993c3c43');

  static Color green50 = fromHex('#e4f9e6');

  static Color gray200 = fromHex('#e9e9ea');

  static Color gray300 = fromHex('#e6e6e6');

  static Color gray30001 = fromHex('#e2e2e2');

  static Color gray100 = fromHex('#f3f3f3');

  static Color blueGray40002 = fromHex('#888888');

  static Color gray6001e = fromHex('#1e767680');

  static Color blueGray40001 = fromHex('#8e8e93');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
