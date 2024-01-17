import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 170,
          ),
          const Image(image: AssetImage('assets/images/connection.png')),
          const Text(
            '2',
            style: TextStyle(
              fontSize: 128,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            'days streak!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 262,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Continue'),
          )
        ],
      ),
    ));
  }
}
