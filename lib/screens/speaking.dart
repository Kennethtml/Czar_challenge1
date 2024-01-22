import 'package:czar_challenge/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class SpeakingScreen extends StatelessWidget {
  SpeakingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.keyboard_arrow_left_sharp),
            const Spacer(),
            
            SizedBox(
              width: 323,
              child: LinearProgressIndicator(
                backgroundColor: const Color.fromRGBO(144, 138, 137, 1),
                value: 4 / 6,
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
                valueColor: const AlwaysStoppedAnimation(
                    Color.fromRGBO(101, 12, 1, 0.89)),
              ),
            ),
            const SizedBox(
              width: 30,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(22, 2, 12, 28),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Speak this sentence',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(97, 97, 97, 1)),
              ),
              const SizedBox(
                height: 34,
              ),
              Align(alignment :Alignment.center,child: Image.asset('assets/images/speaker.png')),
              const SizedBox(
                height: 34,
              ),
              const Align(
                alignment:Alignment.center ,
                child:  Text(
                  'Bounjour, Buchi, encchante',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(97, 97, 97, 1),
                      decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(
                height: 144,
              ),
               Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/microphone.png')),
               const SizedBox(
                height: 194,
              ),
              const Text(
                'Brilliant!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Meaning',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Hello, Buchi,nice to meet you.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: CustomButton(
                    caption: 'Continue',
                    action: () {
                      Navigator.of(context).pop();
                    },
                    type: 'outlined'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
