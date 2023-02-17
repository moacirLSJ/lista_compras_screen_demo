import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme{
  AppTheme(this.context);

  final BuildContext context;

  ThemeData get defaultTheme => ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}