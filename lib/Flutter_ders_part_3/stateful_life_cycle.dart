import 'package:flutter/material.dart';

class StatefulLifeCycle extends StatefulWidget {
  const StatefulLifeCycle({super.key, required this.message});

  final String message;

  @override
  State<StatefulLifeCycle> createState() => _StatefulLifeCycleState();
}

class _StatefulLifeCycleState extends State<StatefulLifeCycle> {
  String _message = '';
  @override
  void initState() {
    super.initState();
    _message = widget.message;

    if (widget.message.length.isOdd) {
      _message += 'tek';
    } else {
      _message += 'cut';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: widget.message.length.isOdd
                ? const Text('Tekdir')
                : const Text('Cutdur')),
        body: widget.message.length.isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
