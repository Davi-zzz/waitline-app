import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: routes,
      initialRoute: '/',
      navigatorKey: rootNavigatorKey,

      title: 'WaitLine',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7565E6),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(
              Color(0xFF7565E6),
            ),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 36,
              ),
            ),
            elevation: const MaterialStatePropertyAll(2),
            shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
            textStyle: MaterialStatePropertyAll(
              GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
