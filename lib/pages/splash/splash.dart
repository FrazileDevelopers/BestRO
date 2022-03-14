import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/router.gr.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  navigateToHome() async {
    Timer(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      context.router.replaceAll(
        [
          LoginRouter(),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return
        // BlocListener<>(listener: (context, UserState state)async {});

        Scaffold(
      body: Center(
        child: Container(
          height: height * .5,
          width: width * .5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon/icon.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
