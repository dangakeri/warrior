import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Nunito',
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.black : Colors.grey.shade300,
      primarySwatch: Colors.blue,
      primaryColor: isDarkTheme ? Colors.black : Colors.grey.shade300,
      accentColor: Colors.white,
      backgroundColor:
          isDarkTheme ? Color.fromARGB(255, 0, 0, 0) : Colors.white,
      indicatorColor: isDarkTheme ? Colors.white : Color(0xFF545d5C),
      buttonColor: isDarkTheme ? Colors.white : Color(0xff323232),
      hintColor: isDarkTheme ? Colors.grey.shade300 : Colors.grey.shade800,
      highlightColor: isDarkTheme ? Colors.white30 : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme ? Colors.black : Color(0xFFE0E0E0),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      ),
      textTheme: TextTheme(
          bodyText2: TextStyle(
              fontSize: 12.0,
              color: isDarkTheme ? Colors.white : Colors.black)),
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme ? Colors.white : Colors.black),
    );
  }
}
