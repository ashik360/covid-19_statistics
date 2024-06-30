import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:age_calculator/views/home.dart';
import 'constant/color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryColor,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        const Locale('en', 'US'), // English
      ],
      debugShowCheckedModeBanner: false,
      title: 'Age Calculator',
      theme: ThemeData(
        primaryColor: primaryColor, // Use primaryColor from color.dart
        colorScheme: ColorScheme.light(
          primary: primaryColor, // Set primary color for ColorScheme
          onPrimary: textColor, // Set onPrimary color for ColorScheme
          onSurface: textColor, // Set onSurface color for ColorScheme
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            iconColor: secondaryColor, // Set button text color
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
