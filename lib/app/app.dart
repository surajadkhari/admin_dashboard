
import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation/journeys/main _screen/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppbarConst.backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white),
        canvasColor: AppbarConst.secondaryColor,
      ),
      home: const MainScreen(),
    );
  }
}
