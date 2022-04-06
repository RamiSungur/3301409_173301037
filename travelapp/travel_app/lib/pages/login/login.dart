import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constants/string_constant.dart';
import 'package:travel_app/extensions/context_extension.dart';
import 'package:travel_app/pages/anasayfa.dart';
import 'package:travel_app/pages/homepage/homepage.dart';
import 'package:travel_app/pages/sifremi_unuttum.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool blankTextfield = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            TravelString.loginTitle,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    label: Text('E-Mail'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Şifre'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomepageScreen(),
                  ));
                },
                child: Text('Giriş Yap'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SifremiUnuttum(),
                    ));
                  },
                  child: Text('Şifremi Unuttum'))
            ],
          ),
        )

        /* Wrap(
        alignment: WrapAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.w),
            child: LottieBuilder.asset(
              TravelString.splashAsset,
              height: 70.w,
              width: 70.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.w),
            child: TextField(
              controller: emailController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.w)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.w),
            child: TextField(
              controller: passwordController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.w)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.w),
            child: MaterialButton(
              child: Text(TravelString.loginTitle),
              color: Colors.amber,
              height: 14.w,
              minWidth: double.infinity,
              onPressed: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  context.pushNamed(TravelRoute.homepage);
                } else {
                  setState(() {
                    blankTextfield = true;
                  });
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                10.w,
              )),
            ),
          ),
          blankTextfield
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.w),
                  child: const FittedBox(
                    child: Text(
                      'Lütfen boş alan bırakmayınız.',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
     */
        );
  }
}
