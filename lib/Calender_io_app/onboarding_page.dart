import 'package:flutter/material.dart';
import 'package:my_app/Product/Language/language_string_items.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageStringItems.calender,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF735BF2)),
              child: Image.asset('assets/icons/oval_copy.png')),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 44, bottom: 10),
              child: Text(
                'Welcome Michael!',
                style: TextStyle(color: Color(0xFF01041D), letterSpacing: 2),
              ),
            ),
            const Text(
              "It'S Time to",
              style: TextStyle(
                  color: Color(0xFF222B45),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 45),
              child: Text(
                "Organize your Day!",
                style: TextStyle(
                    color: Color(0xFF222B45),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Image.asset('assets/images/african_woman.png',
                  width: 845, height: 422),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/images/mobile_phone.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
