import 'package:flutter/material.dart';
import 'package:my_app/ECommerce_app/splash_screen_2.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final _pageController = PageController(
    viewportFraction: 0.9,
  );

  bool test = false;

  int _currentIndex = 1;
  void _updatePageIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 64),
              child: Text(
                _currentIndex.toString(),
                style: const TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FloatingActionButton(
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.slowMiddle);
                },
                child: const Icon(Icons.chevron_left),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text(''),
        ),
        body: PageView(
          onPageChanged: _updatePageIndex,
          controller: _pageController,
          padEnds: false,
          children: [
            Container(
              color: test ? Colors.blue : Colors.yellow,
              child: test
                  ? const Text(
                      'page1',
                      style: TextStyle(fontSize: 64),
                    )
                  : const Text('false'),
            ),
            Container(
              color: Colors.red,
              child: const Text(
                'page2',
                style: TextStyle(fontSize: 64),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Text(
                'page3',
                style: TextStyle(fontSize: 64),
              ),
            ),
            const SplashScreen2()
          ],
        ));
  }
}
