import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// Light theme
ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.blueGrey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: kIsWeb
        ? GoogleFonts.sawarabiGothicTextTheme(Theme.of(context).textTheme)
        : null,
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blueGrey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: kIsWeb
        ? GoogleFonts.sawarabiGothicTextTheme(
            ThemeData(brightness: Brightness.dark).textTheme,
          )
        : null,
  );
}
