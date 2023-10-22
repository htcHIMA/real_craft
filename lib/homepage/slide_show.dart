import 'package:flutter/material.dart';
import 'dart:async';

class Slideshow extends StatefulWidget {
  final List<Widget> slides;
  final Duration autoPlayInterval;

  const Slideshow(
      {super.key,
      required this.slides,
      this.autoPlayInterval = const Duration(seconds: 3)});

  @override
  SlideshowState createState() => SlideshowState();
}

class SlideshowState extends State<Slideshow> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(widget.autoPlayInterval, (timer) {
      if (_currentPage < widget.slides.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      children: widget.slides,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }
}
