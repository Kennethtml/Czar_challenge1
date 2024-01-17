import 'package:czar_challenge/screens/Lessons.dart';
import 'package:czar_challenge/screens/categories.dart';
import 'package:czar_challenge/screens/coming_soon.dart';
import 'package:czar_challenge/widgets/heeader.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  var currentValue = 0;
  Widget currentScreen=CategoriesScreen();


  @override

  Widget build(BuildContext context) {
    if(currentValue==0){
      currentScreen=CategoriesScreen();

    }
   else if(currentValue==1){
      currentScreen=LessonsScreen();

    }
    else{
      currentScreen=ComingSoonScreen();
    }

    return Scaffold(
      appBar: AppBar(title: Header(),toolbarHeight: 100),
      body:currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(  ),
        currentIndex: currentValue,
        onTap: (value) {
          setState(() {
            currentValue=value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Assignment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad_outlined),
            label: 'Gamepad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
