import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppStyle {
  static const kBlack = Colors.black;

  static const kWhite = Colors.white;

  static const primary = Color(0xFF9297FF);

  static const lightOrange = Color(0xFFFEC279);

  static const lightBlue = Color(0xFF9398FE);

  static const lightGreen = Color(0xFFC2EA94);

  static const darkOrage = Color(0xFFFF8158);

  // Navigation bar Icons

  static const homeIcon = "asset/icons/icons8-home.svg";

  static const documentIcon = 'asset/icons/icons8-document (1).svg';

  static const searchIcon = 'asset/icons/8666693_search_icon.svg';

  static const mailIcon = 'asset/icons/mail_icon.svg';

  static const settingsIcon = 'asset/icons/settings_icon.svg';

  static const avatharImage = 'asset/icons/favad-removebg-preview.png';

  static TextStyle popinsGreyColor16Normal = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );

  static TextStyle popinsBlackColor16Bold = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: kBlack,
  );

  static TextStyle popinsWhite12Regular = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: kWhite,
  );

  static ThemeData? theme = ThemeData(
      textTheme: GoogleFonts.nunitoSansTextTheme().apply(
    bodyColor: kBlack,
    displayColor: kBlack,
  ));
}
