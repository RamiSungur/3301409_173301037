import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constants/string_constant.dart';
import 'package:travel_app/extensions/context_extension.dart';
import 'package:travel_app/pages/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _initial();
    super.initState();
  }

  Future _initial() {
    return Future.delayed(const Duration(seconds: 5), (() {
      return context.pushNamed('/login');
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: LottieBuilder.asset(
          TravelString.splashAsset,
          height: 40.w,
          width: 40.w,
        ),
      ),
    );
  }
}
