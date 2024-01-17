import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final String detail;
  final String backgroundImage;
  const LessonCard(
      {super.key,
      required this.title,
      required this.detail,
      required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      width: 343,

      // clipBehavior: Clip.hardEdge,
      child: Stack(children: [
        FadeInImage(
          placeholder: AssetImage(backgroundImage),
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
          height: 104,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
              Text(detail,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
            ],
          ),
        ),
        Positioned(
          child: Image.asset('assets/images/play.png'),
          right: 7,
          bottom: 0,
        )
      ]),
    );
  }
}
