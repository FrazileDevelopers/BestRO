// assuing this is the root widget of your App
import 'package:auto_route/auto_route.dart';
import 'package:bestro/getit.dart';
import 'package:bestro/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/strings.dart';

class BestRo extends StatefulWidget {
  const BestRo({Key? key}) : super(key: key);

  @override
  _BestRoState createState() => _BestRoState();
}

class _BestRoState extends State<BestRo> {
  final router = getIt<BestRoRouter>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(router),
      routeInformationParser: router.defaultRouteParser(),
      title: BestRoStrings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF1b35a6),
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}
