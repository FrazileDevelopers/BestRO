// assuing this is the root widget of your App
import 'package:bestro/routes/router.gr.dart';
import 'package:flutter/material.dart';

import 'constants/strings.dart';

class BestRo extends StatefulWidget {
  const BestRo({Key? key}) : super(key: key);

  @override
  _BestRoState createState() => _BestRoState();
}

class _BestRoState extends State<BestRo> {
  // make sure you don't initiate your router
  // inside of the build function.
  final _bestRoRouter = BestRoRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _bestRoRouter.delegate(),
      routeInformationParser: _bestRoRouter.defaultRouteParser(),
      title: BestRoStrings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
