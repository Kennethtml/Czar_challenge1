import 'package:czar_challenge/screens/interests.dart';
import 'package:czar_challenge/screens/tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


var kColorScheme= ColorScheme.fromSeed(
      seedColor:const Color(0xE3650C01),);
    

    const bgColor= Color.fromRGBO(222, 222, 206, 1);

final theme = ThemeData().copyWith(
    useMaterial3: true,
    colorScheme:kColorScheme,

    appBarTheme: AppBarTheme().copyWith(
      backgroundColor:  const Color.fromRGBO(222, 222, 206, 1)

    ),
    scaffoldBackgroundColor:bgColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: bgColor, // Customize bottom nav bar background color
          selectedItemColor:  kColorScheme.onPrimaryContainer,// Customize selected item color
          unselectedItemColor:kColorScheme.outline,
    
        )
    ,
    iconTheme: IconThemeData().copyWith(
    color: kColorScheme.outline,
    
  ),




    textTheme: GoogleFonts.josefinSansTextTheme(),
   );

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home:  InterestsScreen(),
    );
  }
}
