import 'package:czar_challenge/widgets/custom%20widget/animated_toggle.dart';
import 'package:czar_challenge/widgets/lesson_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonsScreen extends StatelessWidget {
  LessonsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedToggle(
              values: const ['Audio Lessons', 'Video Lessons'],
              onToggleCallback: (value) {},
              textColor: Colors.white,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              buttonColor: Theme.of(context).colorScheme.primary,
            ),
            const LessonCard(
                title: 'First Trip',
                detail:
                    'Here you will listen to conversations between tourists, and learn to speak together with them!',
                backgroundImage: 'assets/images/lessons/lesson1.png'),
            const LessonCard(
                title: 'Freelance Work',
                detail:
                    'After taking this classes, you will be able to take orders from foreigners! ',
                backgroundImage: "assets/images/lessons/Lesson2.png"),
            const LessonCard(
                title: 'First Meeting',
                detail:
                    'You will learn to communicate with your colleagues and understand them!',
                backgroundImage: "assets/images/lessons/Lesson3.png"),
            const LessonCard(
                title: 'Meeting With Partners ',
                detail:
                    'You will learn to communicate with your colleagues and understand them!',
                backgroundImage: "assets/images/lessons/Lesson4.png")
          ],
        ),
      ),
    );
  }
}
