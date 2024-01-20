import 'package:czar_challenge/widgets/custombutton.dart';
import 'package:czar_challenge/widgets/streak_count.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 170,
          ),
          Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage('assets/images/connection.png')),
          const Text(
            '2',
            style: TextStyle(
              fontSize: 128,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(101,12,1,0.98)
            ),
          )
            ],
          )
          ,
          const SizedBox(
            height: 14,
          ),
          const Text(
            'days streak!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
         const SizedBox(
            height: 61,
          ),
           Container(
            height: 149,
            width: 350,
            padding: EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 25
            ),
            decoration: BoxDecoration(
            color: Color.fromRGBO(255, 2555, 255, 0.25),
            
              borderRadius: BorderRadius.circular(20)
            ),

            child: Column(
              children: [
                Row(
                  children: [
                    StreakCount(day: 'Mon', isDone: true),
                    const Spacer(),
                    StreakCount(day: 'Tue', isDone: true),
                    const Spacer(),
                    StreakCount(day: 'Wed', isDone: false),
                    const Spacer(),
                    StreakCount(day: 'Thu', isDone: false),
                    const Spacer(),
                    StreakCount(day: 'Fri', isDone: false),
                    const Spacer(),
                    StreakCount(day: 'Sat', isDone: false)
                  ],
                ),
               const  SizedBox(
                  height: 25,
                ),
                const Text('You’re on a roll, great job! Practice each day to keep up with your streak and earn XP points.',
                textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.8)
                ),)
              ],
            ),
          ),
          const SizedBox(
            height: 131,
          ),
          CustomButton(
            action: () {
              Navigator.of(context).pop();
            },
            caption: 'Continue',
            type: 'oulined',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(caption: 'Share', action: (){}, type:'text')
        ],
      ),
    ));
  }
}
