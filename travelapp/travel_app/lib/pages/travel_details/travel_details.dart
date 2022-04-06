import 'package:flutter/material.dart';

import '../../models/travel.dart';

class TravelDetails extends StatelessWidget {
  final Place? place;
  const TravelDetails({Key? key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          place?.name ?? 'Bulunamadı',
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
