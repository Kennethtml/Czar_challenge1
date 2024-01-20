import 'dart:ffi';

import 'package:czar_challenge/screens/tab.dart';
import 'package:czar_challenge/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

final List<String> interests = [
  'Studies',
  'Reading',
  'Technologies',
  'Travel',
  'Psychology',
  'Gaming',
  'TV/Movies',
  'Sports,',
  'Languages',
  'Fashion',
  'Fitness',
  'Pets',
  'Food',
  'Climate Change',
  'Self-care',
  'work life',
  'Culture',
  'Design',
  'Sociology',
  'Music',
  'Outdoor',
  'Networking',
  'Romance',
  'Shopping',
  'Sight-seeing'
];

class InterestsScreen extends StatefulWidget {
  InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  List<String> _selectedInterests = [];

  //function to update the selection of interests
  void updateInterest(String interest) {
    var isInterest = _selectedInterests.contains(interest);
    if (isInterest) {
      _selectedInterests.remove(interest);
    } else {
      if (_selectedInterests.length >= 6) return;
      _selectedInterests.add(interest);
    }

    setState(() {});
  }

//function returns a boolean for if an interest has been selected . its useful to conditionally render certain styles for interests when selected
  bool isAnInterest(String interest) {
    setState(() {});
    return _selectedInterests.contains(interest);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.keyboard_arrow_left_sharp),
              const Spacer(),
              SizedBox(
                width: 300,
                child: LinearProgressIndicator(
                  backgroundColor: const Color.fromRGBO(144, 138, 137, 1),
                  value: _selectedInterests.length / 6,
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(10),
                  valueColor: const AlwaysStoppedAnimation(
                      Color.fromRGBO(101, 12, 1, 0.89)),
                ),
              ),
              const Spacer(),
              Text(
                '${_selectedInterests.length}/6 ',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'What interests you ?',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const SizedBox(
            height: 9,
          ),
          const Text(
            'Select all that applies',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(144, 138, 137, 1)),
          ),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
            width: 326,
            child: Wrap(spacing: 8, runSpacing: 9, children: [
              for (final interest in interests)
                DottedBorder(
                  borderType: BorderType.RRect,
                  padding: EdgeInsets.all(0),
                  strokeWidth: 2,
                  dashPattern: isAnInterest(interest) ? [100000] : [4],
                  radius: Radius.circular(20),
                  color: Color.fromRGBO(101, 12, 1, 0.5),
                  child: OutlinedButton(
                    onPressed: () {
                      updateInterest(interest);
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isAnInterest(interest)
                            ? const Color.fromRGBO(101, 12, 1, 0.5)
                            : Theme.of(context).scaffoldBackgroundColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        side: BorderSide.none),
                    child: Text(
                      interest,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: isAnInterest(interest)
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                )
            ]),
          ),
          const SizedBox(
            height: 23,
          ),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: const Color.fromRGBO(101, 12, 1, 0.5)),
              child: const Text(
                'Add other +',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomButton(caption: 'Continue', action: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => TabScreen()));},
                    type: 'outlined',)
            ),
          
          const SizedBox(
            height: 12,
          ),
          CustomButton(caption: 'Skip for now', action: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => TabScreen()));}, type: 'text')
        ]),
      ),
    );
  }
}
