import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movies_app/features/home/page/home_page.dart';
import 'package:movies_app/features/layout_page/page/layout_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static String routsName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, LayoutView.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    // var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF121312),
      body: Center(
        child: Image.asset(
          "assets/image/logo_splash.png",

          // fit: BoxFit.cover,
          // height: mediaQuery.height,
          // width: mediaQuery.width,
        ),
      ),
    );
  }
}
