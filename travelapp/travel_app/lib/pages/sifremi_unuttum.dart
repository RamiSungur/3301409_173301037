import 'package:flutter/material.dart';

class SifremiUnuttum extends StatelessWidget {
  const SifremiUnuttum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Şifremi Unuttum'),
      ),
      body: Center(
        child: Text('Şifremi Unuttum'),
      ),
    );
  }
}
