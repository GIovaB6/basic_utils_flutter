import 'package:flutter/material.dart';
import 'package:basic_utils_flutter/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray90019 => BoxDecoration(
        color: BadColorConstant.blueGray90019,
      );
  static BoxDecoration get fillGreen200 => BoxDecoration(
        color: BadColorConstant.green200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: BadColorConstant.gray50,
      );
  static BoxDecoration get fillTeal500 => BoxDecoration(
        color: BadColorConstant.teal500,
      );
  static BoxDecoration get txtOutlineGray30001 => BoxDecoration(
        border: Border.all(
          color: BadColorConstant.gray30001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtOutlineTeal50001 => BoxDecoration(
        color: BadColorConstant.whiteA700,
        border: Border.all(
          color: BadColorConstant.teal50001,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get txtFillRedA200 => BoxDecoration(
        color: BadColorConstant.redA200,
      );
  static BoxDecoration get fillGray6001e => BoxDecoration(
        color: BadColorConstant.gray6001e,
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: BadColorConstant.green50,
        border: Border.all(
          color: BadColorConstant.whiteA700,
          width: getHorizontalSize(
            2,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: BadColorConstant.whiteA700,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: BadColorConstant.lightGreen,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: Colors.red,
      );
  static BoxDecoration get primaryWhite => BoxDecoration(
        color: BadColorConstant.whiteA700,
      );
  static BoxDecoration get txtOutlineGray8005b => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: BadColorConstant.gray8005b,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: BadColorConstant.blueGray900,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: BadColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray8005b => BoxDecoration(
        color: BadColorConstant.gray50Ef,
        border: Border(
          bottom: BorderSide(
            color: BadColorConstant.gray8005b,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );

  static BoxDecoration get myShop => BoxDecoration(
        color: Colors.yellow,
        border: Border(
          bottom: BorderSide(
            color: BadColorConstant.gray8005b,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtFillGreen300 => BoxDecoration(
        color: BadColorConstant.green300,
      );
  static BoxDecoration get txtFillGreen100 => BoxDecoration(
        color: BadColorConstant.green100,
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: BadColorConstant.gray400,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration(
        color: BadColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: BadColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineTeal500 => BoxDecoration(
        color: BadColorConstant.green2004c,
        border: Border.all(
          color: BadColorConstant.teal500,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillTeal500 => BoxDecoration(
        color: BadColorConstant.teal500,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: BadColorConstant.gray200,
      );
  static BoxDecoration get fillTeal500a2 => BoxDecoration(
        color: BadColorConstant.teal500A2,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: BadColorConstant.gray100,
      );
  static BoxDecoration get txtOutlineGray400 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: BadColorConstant.gray400,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtFillTeal100 => BoxDecoration(
        color: BadColorConstant.teal100,
      );
  static BoxDecoration get outlineGray8005b1 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: BadColorConstant.gray8005b,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius roundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius customBorderBL8 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius circleBorder48 = BorderRadius.circular(
    getHorizontalSize(
      48,
    ),
  );

  static BorderRadius roundedBorder29 = BorderRadius.circular(
    getHorizontalSize(
      29,
    ),
  );

  static BorderRadius txtRoundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
