import 'package:flutter/material.dart';
import 'package:my_app/Product/Language/language_string_items.dart';

import 'package:my_app/Widgets/burgers_button_widget.dart';

class StatefulWidgetLearn extends StatefulWidget {
  const StatefulWidgetLearn({super.key});

  @override
  State<StatefulWidgetLearn> createState() => _StatefulWidgetLearnState();
}

class _StatefulWidgetLearnState extends State<StatefulWidgetLearn> {
  int _counter = 0;

  // void increamentButton() {
  //   setState(() {
  //     counter++;
  //   });
  // }

  // void deincreamentButton() {
  //   setState(() {
  //     counter--;
  //   });
  // }
  void _updateCounter(bool isIncreament) {
    setState(() {
      if (isIncreament) {
        _counter++;
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var increamentWidget = FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );

    var deincreamentWidget = FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          LanguageStringItems.testApp,
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          increamentWidget,
          deincreamentWidget,
        ],
      ),
      body: Center(
        child: Column(
          children: [
            BurgersButtonWidget(),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
