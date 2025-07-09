// import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// /// A class to manage the application's theme.
// /// This helps in centralizing color and style definitions for both light and dark modes.
// class AppTheme {
//   // --- Light Theme Colors ---
//   static const Color lightPrimary = Color(0xFF6A1B9A); // Purple
//   static const Color lightAccent = Color(0xFFFFA000); // Orange
//   static const Color lightBackground = Colors.white;
//   static const Color lightInputFill = Color(0xFFEDEDED);
//   static const Color lightTextColor = Color(0xFF333333);
//   static const Color lightSecondaryText = Colors.black54;
//   static const Color lightServiceButton =
//       Color(0xFFEDE7F6); // Light purple for some buttons

//   // --- Dark Theme Colors ---
//   static const Color darkPrimary = Color(0xFF8E44AD); // Lighter Purple
//   static const Color darkAccent = Color(0xFFF39C12); // Lighter Orange
//   static const Color darkBackground = Color(0xFF121212);
//   static const Color darkInputFill = Color(0xFF2C2C2C);
//   static const Color darkTextColor = Colors.white;
//   static const Color darkSecondaryText = Colors.white70;
//   static const Color darkServiceButton = Color(0xFF383444);

//   /// The light theme configuration.
//   static final ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: lightPrimary,
//     scaffoldBackgroundColor: lightBackground,
//     fontFamily: 'Tajawal',
//     colorScheme: const ColorScheme.light(
//       primary: lightPrimary,
//       secondary: lightAccent,
//       background: lightBackground,
//     ),
//     appBarTheme: const AppBarTheme(
//       systemOverlayStyle: SystemUiOverlayStyle.dark,
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: lightAccent,
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         textStyle: const TextStyle(
//             fontFamily: 'Tajawal', fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//     ),
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: lightInputFill,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
//       hintStyle: TextStyle(color: Colors.grey[500]),
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: const Color(0xFFF7F7F7),
//       selectedItemColor: lightPrimary,
//       unselectedItemColor: Colors.grey[600],
//       type: BottomNavigationBarType.fixed,
//     ),
//   );

//   /// The dark theme configuration.
//   static final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: darkPrimary,
//     scaffoldBackgroundColor: darkBackground,
//     fontFamily: 'Tajawal',
//     colorScheme: const ColorScheme.dark(
//       primary: darkPrimary,
//       secondary: darkAccent,
//       background: darkBackground,
//     ),
//     appBarTheme: const AppBarTheme(
//       systemOverlayStyle: SystemUiOverlayStyle.light,
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: darkAccent,
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         textStyle: const TextStyle(
//             fontFamily: 'Tajawal', fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//     ),
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: darkInputFill,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
//       hintStyle: TextStyle(color: Colors.grey[500]),
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: const Color(0xFF1F1F1F),
//       selectedItemColor: darkPrimary,
//       unselectedItemColor: Colors.grey[400],
//       type: BottomNavigationBarType.fixed,
//     ),
//   );
// }

import 'package:flutter/material.dart';

class AppTheme {
  // --- Light Theme Colors ---
  // static const Color lightPrimary =
  //     Color(0xFF6A1B9A); // Main purple from the banner
  static const Color lightPrimary =
      Color(0xFF71619A); // Main purple from the banner
  static const Color lightAccent =
      Color(0xFFFFA000); // Orange for the login button
  static const Color lightBackground = Colors.white;
  static const Color lightInputFill = Color(0xFFEDEDED);
  static const Color lightBottomNav = Color(0xFFF7F7F7);
  static const Color lightTextColor = Color(0xFF333333);
  static const Color lightServiceButton = Color(0xFFEDE7F6);

  // --- Dark Theme Colors ---
  static const Color darkPrimary = Color(0xFF71619A); // Lighter Purple
  static const Color darkAccent = Color(0xFFF39C12); // Lighter Orange
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkInputFill = Color(0xFF2C2C2C);
  static const Color darkBottomNav = Color(0xFF1F1F1F);
  static const Color darkTextColor = Colors.white;
  static const Color darkServiceButton = Color(0xFF383444);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBackground,
    fontFamily: 'Tajawal',
    colorScheme: const ColorScheme.light(
      primary: lightPrimary,
      secondary: lightAccent,
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(
            fontFamily: 'Tajawal', fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightInputFill,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hintStyle: TextStyle(color: Colors.grey[500]),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightBottomNav,
      selectedItemColor: lightPrimary,
      unselectedItemColor: Colors.grey[600],
      type: BottomNavigationBarType.fixed,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBackground,
    fontFamily: 'Tajawal',
    colorScheme: const ColorScheme.dark(
      primary: darkPrimary,
      secondary: darkAccent,
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(
            fontFamily: 'Tajawal', fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: darkInputFill,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hintStyle: TextStyle(color: Colors.grey[500]),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkBottomNav,
      selectedItemColor: darkPrimary,
      unselectedItemColor: Colors.grey[400],
      type: BottomNavigationBarType.fixed,
    ),
  );
}
