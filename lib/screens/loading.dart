import 'package:czar_challenge/screens/interests.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {

  LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
   Future  _initializeApp() async{
    await Future.delayed(
      Duration(seconds: 1)
    );
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>InterestsScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initializeApp();
  }

  @override

  Widget build(BuildContext) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(0, 0, 0, 1),
          Color.fromRGBO(159, 79, 79, 0.7)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children:[ 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset('assets/images/connection_active.png'),
              const Text(' Speak',style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),),
             const Text('Sphere',style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(255,117,98,1)
              ),
              )
            ],),]
          ),
        ),
      ),
    );
  }
}
