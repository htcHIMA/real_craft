import 'package:flutter/material.dart';

import 'landing_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Row(
        children: [
          Expanded(child: LandingPage()),
        ],
      ),
    );
  }

}