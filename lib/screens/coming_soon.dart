import 'package:flutter/widgets.dart';

class ComingSoonScreen extends StatelessWidget {
  ComingSoonScreen({super.key});
  @override
  Widget build(BuildContext) {
    return Center(
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          const SizedBox(
            height: 114,
          ),
          Image.asset('assets/images/comingsoon/bro.png'),
          Row(
            children: [
              Spacer(),
          Image.asset('assets/images/comingsoon/refresh.png'),
            ],
          ),
          const Text(
            'Coming Soon!',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10,),
          const Text('We\'ll be up soon, keep an eye \non us')
        ],
      ),
    );
  }
}
