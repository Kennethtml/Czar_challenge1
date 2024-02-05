import 'package:czar_challenge/screens/interests.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {

  LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin {
late AnimationController _womanSlideController;
late Animation<Offset>_womanSlideAnimation;


late AnimationController _manSlideController;
late Animation<Offset>_manSlideAnimation;

late AnimationController _rotateAnimationController;

late Animation<double>_rotateAnimation;

@override
  void initState() {

    super.initState();
    _womanSlideController=AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
   _womanSlideAnimation=  Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _womanSlideController,
        curve: Curves.easeInOut,
      ),
    );


     _manSlideController=AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
   _manSlideAnimation=  Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _manSlideController,
        curve: Curves.easeInOut,
      ),
    );


      _rotateAnimationController=AnimationController(vsync: this, duration: Duration(seconds: 1));
   _rotateAnimation=  Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _rotateAnimationController,
        curve: Curves.linear,
      ),
    );
    _womanSlideController.forward();
      _manSlideController.forward();
      _manSlideController.addStatusListener((status) {
        if(status==AnimationStatus.completed){

          _rotateAnimationController.repeat();
            Future.delayed(Duration(seconds: 4),(){
             Navigator.of(context).pushReplacement(
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => InterestsScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeInOutSine;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
    transitionDuration: Duration(seconds: 1), // Specify your desired duration
  ));
            
          });
        }
        
      }
      
    
        
         

      );
  }



  //  Future  _initializeApp() async{
  //   await Future.delayed(
  //     Duration(seconds: 6)
  //   );
  //   Navigator.of(context).pushReplacement(
  // PageRouteBuilder(
  //   pageBuilder: (context, animation, secondaryAnimation) => InterestsScreen(),
  //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //     var begin = Offset(0.0, 1.0);
  //     var end = Offset.zero;
  //     var curve = Curves.bounceOut;

  //     var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //     var offsetAnimation = animation.drive(tween);

  //     return SlideTransition(
  //       position: offsetAnimation,
  //       child: child,
  //     );
  //   },
  //   transitionDuration: Duration(seconds: 2), // Specify your desired duration
  // ));
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _initializeApp();
  // }

  @override
  void dispose() {
    _manSlideController.dispose();
    _womanSlideController.dispose();
    _rotateAnimationController.dispose();
    super.dispose();
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
              ),

              RotationTransition(turns:_rotateAnimation ,
              child: Image.asset('assets/images/rotate.png'),)
            ],),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 370,
              child: Stack(
                children: [
                  Positioned(child: 
                  SlideTransition(
                    position: _manSlideAnimation,
                    child: Image.asset('assets/images/man_vector.png')),
                  top: 0,
                  left: 0,),
                  Positioned(child: 
                SlideTransition(
                  position: _womanSlideAnimation,
                  child: Image.asset('assets/images/woman_vector.png')),
                  right: 0,bottom: 0,)
                ],
              ),
            )
            
            ]
          ),
        ),
      ),
    );
  }
}
