 import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String caption;
  final String type;
  void Function() action;
   CustomButton({super.key,required this.caption,required this.action,required this.type});

  
   @override
   Widget build(BuildContext context){
      if (type=='text'){
        return  TextButton(
              onPressed: action
                ,
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 134, vertical: 18)),
              child: Text(
                caption,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(101, 12, 1, 0.89)),
              ));
      }
    return  OutlinedButton(
      onPressed: action,
             
              style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 134, vertical: 18),
                  backgroundColor: Color.fromRGBO(101, 12, 1, 0.89)),
              child:  Text(
                caption,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            );
   }

}