import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static const kBlack = Colors.black;

  static const primary = Color.fromARGB(255, 167, 130, 231);

  // Navigation bar Icons

  static const homeIcon = "asset/icons/icons8-home.svg";

  static const documentIcon = 'asset/icons/icons8-document (1).svg';

  static const mailIcon = 'asset/icons/mail_icon.svg';

  static const settingsIcon = 'asset/icons/settings_icon.svg';

  static ThemeData? theme = ThemeData(
      textTheme: GoogleFonts.nunitoSansTextTheme().apply(
    bodyColor: kBlack,
    displayColor: kBlack,
  ));
}
