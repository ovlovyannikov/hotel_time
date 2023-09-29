import 'package:flutter/material.dart';

var primaryColor = Colors.purple.shade500;
var hintColor = Colors.white;

final themeData = ThemeData(
  scaffoldBackgroundColor: primaryColor,
  primaryColor: primaryColor,
  hintColor: hintColor,
  primarySwatch: Colors.yellow,
  focusColor: Colors.amberAccent,
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    labelSmall: TextStyle(
      color: Colors.grey.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    labelMedium: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    labelLarge: TextStyle(
      color: primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    headlineMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    ),
    titleSmall: TextStyle(
      color: Colors.grey.shade500,
      //fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    titleMedium: TextStyle(
      color: primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      color: primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
  ),
);
