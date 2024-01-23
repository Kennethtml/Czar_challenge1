import 'package:czar_challenge/screens/profile.dart';
import 'package:czar_challenge/screens/streaks.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 0
      ),
      child: Row(
        
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 7
            ),
            width: 303,
            child: Row(
    
              children: [
                InkWell(
                  
                    onTap: () {},
                    child: Image.asset('assets/images/header/location.png')),
                    const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => StreakScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/header/flame.png'),
                        const Text(' 2',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,color: Color.fromRGBO(101, 12, 1, 1)
                        ),)
                      ],
                    )),
                    const Spacer(),
                      InkWell(
                    onTap: () {},
                    child:Row(
                      children: [
                        Image.asset('assets/images/header/target.png'),
                        const Text(' 17',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,color: Color.fromRGBO(101, 12, 1, 1)
                        ),)
                      ],
                    )),
                    const Spacer(),
                      InkWell(
                        
                    onTap: () {},
                    child: Image.asset('assets/images/header/Notification.png')),
              ],
            ),
          ),
          const Spacer(),
        GestureDetector(onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ProfileScreen()));
        },child: Hero( tag:'avatar',child: Image.asset('assets/images/header/avatar.png')))
        ],
      ),
    );
  }
}
