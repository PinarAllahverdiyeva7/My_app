import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
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
              ),
            ),
          ],
          leading: const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              '2/3',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/sales_consulting.png',
                fit: BoxFit.contain,
              ),
              const Text(
                'Make Payment',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 160),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                    style: TextStyle(
                      color: Color(0xFFA8A8A9),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Prev',
                        style: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            color: Color(0xFFF83758),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
