import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(border: Border.all(
          style: BorderStyle.solid,color: Colors.black,
        )),
        child: Column(
          children: [
            Hero(
              tag: 'avatar',
              child: Image.asset('assets/images/avatar_large.png',
              height: 200,width: 400,),
            ),
            OutlinedButton(onPressed: (){Navigator.of(context).pop();}, child:Text('Return to home'))
          ],
        ),
      )
      )
    );
  }

}