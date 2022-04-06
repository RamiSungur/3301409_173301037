import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TravelChoiseCard extends StatelessWidget {
  final Icon? icon;
  const TravelChoiseCard({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(2.w)),
      height: 12.w,
      width: 12.w,
      child: IconButton(
        onPressed: () {},
        icon: icon ??
            const Icon(
              Icons.car_repair,
            ),
      ),
    );
  }
}
