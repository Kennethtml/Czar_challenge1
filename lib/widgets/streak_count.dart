import 'package:flutter/material.dart';

class StreakCount extends StatelessWidget{
  final String day;
  final bool isDone;
  StreakCount({super.key, required this.day, required this.isDone});
  @override
  Widget build(BuildContext context){
    if(isDone){

    return Column(
      children: [
        Text(day,style:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(101,12,1,1)

        ),
        ),
        Image.asset('assets/images/connection_active.png',height: 18,width: 15,)

      ],
    );
    }
    return Column(
      children: [
        Text(day,style:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(144,138,137,1)

        ),
        ),
        Image.asset('assets/images/connection.png',height: 18,width: 15,)

      ],

    );
  }
}