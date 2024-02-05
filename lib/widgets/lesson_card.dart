import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
      height: 150,
      width: 343,
      margin: EdgeInsets.only(bottom: 18),

      // clipBehavior: Clip.hardEdge,
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            
          ),
          clipBehavior: Clip.hardEdge,
          child:ColorFiltered(
            colorFilter: ColorFilter.mode(Color.fromRGBO(222, 222, 206, 1), BlendMode.darken),
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
              height: 130,
              width: double.infinity,
              
            ),
          ),
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
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 181,
                  child: Text(detail,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),),
                ),
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
