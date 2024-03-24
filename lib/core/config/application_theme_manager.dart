import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static Color primaryColor = Color(0xff282A28);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFF121312),
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        toolbarHeight: 120,
        iconTheme: IconThemeData(
          color: Colors.white,
        )),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
      padding: EdgeInsets.zero,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF1A1A1A),
      selectedLabelStyle: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
      selectedItemColor: Color(0xFFFFBB3B),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFFBB3B),
        size: 30,
      ),
      unselectedLabelStyle: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
      unselectedItemColor: Color(0xffC6C6C6),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffC6C6C6),
        size: 30,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
// static ThemeData darkTheme = ThemeData(
//   primaryColor: primaryColor,
//   scaffoldBackgroundColor: Color(0xff060E1E),
//   appBarTheme: AppBarTheme(
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       centerTitle: true,
//       toolbarHeight: 120,
//       iconTheme: IconThemeData(
//         color: Color(0xff060E1E),
//       )
//   ),
//   bottomAppBarTheme: BottomAppBarTheme(
//     color: Color(0xff141922),
//     padding: EdgeInsets.zero,
//   ),
//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//     backgroundColor: primaryColor,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(50),
//       side: BorderSide(
//         color: Color(0xff060E1E),
//         width: 4,
//       ),
//     ),
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     elevation: 0,
//     type: BottomNavigationBarType.fixed,
//     backgroundColor: Colors.transparent,
//     showSelectedLabels: false,
//     selectedItemColor: primaryColor,
//     selectedIconTheme: IconThemeData(
//       color: primaryColor,
//       size: 38,
//     ),
//     showUnselectedLabels: false,
//     unselectedIconTheme: IconThemeData(
//       color: Color(0xffC8C9CB),
//     ),
//   ),
//   textTheme: TextTheme(
//     titleLarge: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 22,
//       fontWeight: FontWeight.bold,
//       color: Colors.white,
//     ),
//     bodyLarge: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 20,
//       fontWeight: FontWeight.w400,
//       color: Colors.white,
//     ),
//     bodyMedium: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 18,
//       fontWeight: FontWeight.bold,
//       color: Colors.white,
//     ),
//     bodySmall: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 14,
//       fontWeight: FontWeight.bold,
//       color: Colors.white,
//     ),
//     displayLarge: TextStyle(
//       fontFamily: "Poppins",
//       fontSize: 15,
//       fontWeight: FontWeight.bold,
//       color: Colors.white,
//     ),
//   ),
// );
}
