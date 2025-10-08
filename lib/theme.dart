// import 'package:flutter/material.dart';

// class AppColors {
//   static const Color primary = Color(0xFF1193d4);
//   static const Color textDark = Colors.black;
//   static const Color textLight = Colors.grey;
//   static const Color background = Color(0xFFF8FAFC); // slate-50
// }

// class AppTheme {
//   static ThemeData lightTheme = ThemeData(
//     fontFamily: "PlusJakartaSans",
//     primaryColor: AppColors.primary,
//     scaffoldBackgroundColor: AppColors.background,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       titleTextStyle: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: AppColors.textDark,
//       ),
//       iconTheme: IconThemeData(color: AppColors.textDark),
//     ),
//     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//       selectedItemColor: AppColors.primary,
//       unselectedItemColor: AppColors.textLight,
//       type: BottomNavigationBarType.fixed,
//     ),
//   );
// }

// import 'package:flutter/material.dart';

// class AppColors {
//   static const Color primary = Color.fromARGB(255, 13, 115, 165);
//   // static const Color primary2 = Color.fromARGB(255, 3, 104, 186);
//   static const Color primary2 = Color.fromARGB(255, 80, 5, 41);
//   static const Color text = Color.fromARGB(255, 159, 102, 130);

//   static const Color normaltext = Colors.black; // gray-50

//   static const Color background = Color(0xFFF9FAFB); // gray-50
//   static const Color textDark = Color(0xFF1F2937); // gray-800
//   static const Color textLight = Color(0xFF6B7280); // gray-500
//   static const Color border = Color(0xFFE5E7EB); // gray-200
//   static const Color danger = Colors.red;
//   static const Color rating = Colors.amber;
//   static const Color container = Color(0xFFFFFFFF);

//   // Icon background
//   static const Color iconBg = Color(0xFFE7EFF3);
// }

// class AppTheme {
//   static ThemeData lightTheme = ThemeData(
//     scaffoldBackgroundColor: AppColors.background,
//     primaryColor: AppColors.primary,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.white,
//       elevation: 1,
//       iconTheme: IconThemeData(color: AppColors.textDark),
//       titleTextStyle: TextStyle(
//         color: AppColors.textDark,
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//       selectedItemColor: AppColors.primary,
//       unselectedItemColor: AppColors.textLight,
//       type: BottomNavigationBarType.fixed,
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppColors {
  static const Color primary = Color.fromARGB(255, 13, 115, 165);
  static const Color primary2 = Color.fromARGB(255, 80, 5, 41);
  static const Color text = Color.fromARGB(255, 159, 102, 130);

  static const Color normaltext = Colors.black;
  static const Color background = Color(0xFFF9FAFB);
  static const Color textDark = Color(0xFF1F2937);
  static const Color textLight = Color(0xFF6B7280);
  static const Color border = Color(0xFFE5E7EB);
  static const Color danger = Colors.red;
  static const Color rating = Colors.amber;
  static const Color container = Color(0xFFFFFFFF);
  static const Color iconBg = Color(0xFFE7EFF3);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.primary2,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 1,
      iconTheme: const IconThemeData(color: AppColors.textDark),
      titleTextStyle: TextStyle(
        color: AppColors.textDark,
        fontSize: 18.sp, // responsive font size
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.bold, color: AppColors.textDark),
      labelMedium: TextStyle(
          fontSize: 18.sp, fontWeight: FontWeight.w600, color: AppColors.textDark),
      bodyLarge: TextStyle(fontSize: 16.sp, color: AppColors.textDark,fontWeight: FontWeight.w600 ),
      bodyMedium: TextStyle(fontSize: 14.sp, color: AppColors.textDark),
      labelLarge: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary2,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.w),
        ),
        elevation: 2,
      )
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        foregroundColor: AppColors.primary2,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primary2,
      unselectedItemColor: AppColors.textLight,
      type: BottomNavigationBarType.fixed,
    ),
  );
}