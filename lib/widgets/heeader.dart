import 'package:czar_challenge/screens/streaks.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 1)),
          padding: const EdgeInsets.all(0),
          child: Row(

            children: [
              IconButton(
                padding: EdgeInsets.all(0),
                  onPressed: () {},
                  icon: Image.asset('assets/images/header/location.png')),
                  const SizedBox(width: 34,),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => StreakScreen()));
                  },
                  icon: Image.asset('assets/images/header/flame.png')),
                  const SizedBox(width: 34,),
                    IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/header/target.png')),
                  const SizedBox(width: 60,),
                    IconButton(
                      
                  onPressed: () {},
                  icon: Image.asset('assets/images/header/Notification.png')),
            ],
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/header/avatar.png')
      ],
    );
  }
}
