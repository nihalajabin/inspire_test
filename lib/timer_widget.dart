import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimerWidget extends StatelessWidget {
  final String? time;
  final String? duration;
  const TimerWidget({super.key, this.time, this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xffF2B754),
        boxShadow: [
          BoxShadow(
              color: Color(0xff000000).withOpacity(
                0.25,
              ),
              blurRadius: 2,
              offset: Offset(
                2,
                2,
              ))
        ],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              time ?? "",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Text(
              duration ?? "",
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
