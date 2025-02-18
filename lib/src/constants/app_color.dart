import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF4643C9);
  static const Color secondaryColor = Color(0xFF467AF1);
  static const Color backgroundColor = Color(0x1A467AF1);
  static const Color kBackground = Color.fromARGB(255, 241, 240, 253);
  static const Color backgroundCard = Color(0xFFEBF1FF);
  static const Color textColor = Color(0xFF333333);
  static const Color kGreenPreparation = Color(0xFF208A4F);
  static const Color kRed = Color(0xFFE02020);
  static const Color kYellowWarning = Color(0xFFF4951A);
  static const Color kBlueInformation = Color(0xFF183575);
  static const Color kGreyBackground = Color(0xFFF5F5F5);
  static const Color kGreyText = Color(0xFF808080);
  static const Color kWhite = Color(0xFFFFFFFF);
  static const Color kGrey = Color(0xFFF0F5F5);
  static Color kOnBoardingColor = const Color(0XFFFEFEFE);
  static Color kGrayscale40 = const Color(0XFFAEAEB2);
  static Color kGrayscaleDark100 = const Color(0XFF1C1C1E);
  // white

  // black
  static const Color kBlack = Color(0xFF000000);

  static bool isDarkMode = false;
  static String appLangue = 'fr';

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    isDarkMode = isDarkTheme;
    return ThemeData(
      colorScheme: const ColorScheme.light(primary: AppColors.secondaryColor),
      //  useMaterial3: true,
      // colorScheme: isDarkTheme ? darkColorScheme : lightColorScheme,
      appBarTheme: const AppBarTheme(elevation: 0.0),
      cardTheme: cardThemeData,
    );
  }

  static defaultLangue(String langue, BuildContext context) {
    appLangue = langue;
  }
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFF4951A),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF183575),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFE02020),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFF183575),
  onSurface: Color(0xFFFFFFFF),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFF4951A),
  // black
  onPrimary: Color(0xFF000000),
  secondary: Color(0xFF183575),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFE02020),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFF183575),
  onSurface: Color(0xFFFFFFFF),
);

var cardThemeData = CardTheme(
  elevation: 10.0,
  shadowColor: Colors.grey.withOpacity(.3),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
);
