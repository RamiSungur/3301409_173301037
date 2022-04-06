import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constants/string_constant.dart';
import 'package:travel_app/extensions/context_extension.dart';

class NotFound extends StatefulWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  @override
  void initState() {
    // _initial();
    super.initState();
  }

  // Future _initial() {
  //   return Future.delayed(const Duration(seconds: 5), (() {
  //     return context.pushNamed('/splash');
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: LottieBuilder.asset(
          TravelString.notFoundAsset,
          // height: 40.w,
          width: double.infinity,
        ),
      ),
    );
  }
}
