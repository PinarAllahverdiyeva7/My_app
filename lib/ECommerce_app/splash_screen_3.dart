import 'package:flutter/material.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            '3/3',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: Image.asset(
                  'assets/images/shopping_bag.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                'Get Your Order',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 60),
                child: Text(
                  textAlign: TextAlign.center,
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFA8A8A9),
                      letterSpacing: 2),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Prev',
                        style:
                            TextStyle(color: Color(0xFFC4C4C4), fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            color: Color(0xFFF83758),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
