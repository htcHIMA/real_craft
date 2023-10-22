import 'package:flutter/material.dart';
import 'package:real_craft/homepage/slide_show.dart';

import '../components/my_outlined_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
            child: const Slideshow(
              slides: [
                Image(
                  image: AssetImage('assets/3d_print_1.jpeg'),
                  fit: BoxFit.fill,
                ),
                Image(
                    image: AssetImage('assets/3d_print_3.jpeg'),
                    fit: BoxFit.fill),
                Image(
                    image: AssetImage('assets/3d_print_4.jpeg'),
                    fit: BoxFit.fill),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is title',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              MyOutlinedButton(
                text: 'Go Craft',
              ),
            ],
          ),
        )
      ],
    );
  }
}
