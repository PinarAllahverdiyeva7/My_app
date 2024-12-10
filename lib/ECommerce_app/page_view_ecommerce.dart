import 'package:flutter/material.dart';
import 'package:my_app/ECommerce_app/splash_screen_1.dart';
import 'package:my_app/ECommerce_app/splash_screen_2.dart';
import 'package:my_app/ECommerce_app/splash_screen_3.dart';

class PageViewEcommerce extends StatefulWidget {
  const PageViewEcommerce({super.key});

  @override
  State<PageViewEcommerce> createState() => _PageViewEcommerceState();
}

class _PageViewEcommerceState extends State<PageViewEcommerce> {
  final pageController = PageController(viewportFraction: 1);
  int _currentIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: PageView(
          controller: pageController,
          children: const [SplashScreen1(), SplashScreen2(), SplashScreen3()],
        ));
  }
}
