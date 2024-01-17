import 'package:czar_challenge/widgets/custom%20widget/animated_toggle.dart';
import 'package:czar_challenge/widgets/lesson_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonsScreen extends StatelessWidget {
  LessonsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
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
          LessonCard(title: 'First Trip', detail: 'Here you will listen to conversations between tourists, and learn to speak together with them!', backgroundImage:'assets/images/lessons/lesson1.png')
        ],
      ),
    );
  }
}
