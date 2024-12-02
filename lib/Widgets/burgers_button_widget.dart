import 'package:flutter/material.dart';
import 'package:my_app/Product/Language/language_string_items.dart';

class BurgersButtonWidget extends StatefulWidget {
  const BurgersButtonWidget({super.key});

  @override
  State<BurgersButtonWidget> createState() => _BurgersButtonWidgetState();
}

class _BurgersButtonWidgetState extends State<BurgersButtonWidget> {
  int _counterValue = 0;
  void _counterValueMethod() {
    setState(() {
      _counterValue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _counterValueMethod,
        child: Text(
          '${LanguageStringItems.burger} $_counterValue',
          style: TextStyle(color: Colors.black),
        ));
  }
}
