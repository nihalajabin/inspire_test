import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final String? name;
  final String? path;
  final String? badgeIcon;
  const CarouselWidget(
      {super.key, this.name, required this.path, this.badgeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image(
              height: 65,
              width: 65,
              image: AssetImage(path ?? ""),
            ),
            Positioned(
              //child: Align(
              // alignment: Alignment.bottomCenter,
              bottom: -2,
              right: 23,
              child: Image(
                height: 20,
                width: 20,
                image: AssetImage(badgeIcon ?? ""),
              ),
            ),
            // ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name ?? "",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
              // fontWeight: FontWeight.w600,
              ),
        ),
      ],
    ));
  }
}
