import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:new_calc_bloc/common/colorz.dart';
import 'package:new_calc_bloc/common/dimensions.dart';
import 'package:new_calc_bloc/common/fonts.dart';
import 'package:new_calc_bloc/common/styles.dart';

class Themes {
  static final Map<String, ThemeData> themesList = {
    'Light Theme': lightTheme,
    'Dark Theme': darkTheme,
    'Violet Theme': violetTheme,
  };

//LIGHT THEME

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colorz.babyPowder,
    colorScheme: const ColorScheme.light(
      primaryContainer: Colorz.celeste,
      onPrimary: Colorz.green,
    ),
    popupMenuTheme: const PopupMenuThemeData(
        color: Colorz.teaGreen,
        elevation: ElevationSizes.tiny,
        textStyle: TextStyle(
            fontSize: FontSizes.small,
            color: Colorz.green,
            fontWeight: FontWeight.bold)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(ElevationSizes.little),
        shape: MaterialStateProperty.all(const CircleBorder()),
        backgroundColor: MaterialStateProperty.all(Colorz.teaGreen),
        textStyle: MaterialStateProperty.all(
          Styles.roundButtonTextStyle,
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(75, 75),
        ),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colorz.lightGrey,
    colorScheme: const ColorScheme.dark(
      primaryContainer: Colorz.grey,
      onPrimary: Colorz.teaGreen,
    ),
    popupMenuTheme: const PopupMenuThemeData(
        color: Colorz.grey,
        elevation: ElevationSizes.tiny,
        textStyle: TextStyle(
            fontSize: FontSizes.small,
            color: Colorz.white,
            fontWeight: FontWeight.bold)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(ElevationSizes.little),
        shape: MaterialStateProperty.all(const CircleBorder()),
        backgroundColor: MaterialStateProperty.all(Colorz.darkGrey),
        textStyle: MaterialStateProperty.all(
          Styles.roundButtonTextStyle,
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(75, 75),
        ),
      ),
    ),
  );
  static final violetTheme = ThemeData(
    scaffoldBackgroundColor: Colorz.lightViolet,
    colorScheme: const ColorScheme.dark(
      primaryContainer: Colorz.violet,
      onPrimary: Colorz.lightViolet,
    ),
    popupMenuTheme: const PopupMenuThemeData(
        color: Colorz.violet,
        elevation: ElevationSizes.tiny,
        textStyle: TextStyle(
            fontSize: FontSizes.small,
            color: Colorz.lightViolet,
            fontWeight: FontWeight.bold)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(ElevationSizes.little),
        shape: MaterialStateProperty.all(const CircleBorder()),
        backgroundColor: MaterialStateProperty.all(Colorz.darkViolet),
        textStyle: MaterialStateProperty.all(
          Styles.roundButtonTextStyle,
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(75, 75),
        ),
      ),
    ),
  );
}

// static final Map<String, ThemeData> themesList = {
//   'Light Theme': lightTheme,
//   'Dark Theme': darkTheme,
//   'Violet Theme': violetTheme,
// };

//LIGHT THEME
