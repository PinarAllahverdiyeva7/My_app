import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeInputOne = FocusNode();
  FocusNode focusNodeInputTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          CustomTextField(
            focusNodeInputOne: focusNodeInputOne,
            labelText: 'Mail',
            textInputAction: TextInputAction.next,
          ),
          CustomTextField(
            focusNodeInputOne: focusNodeInputTwo,
            labelText: 'Password',
            textInputAction: TextInputAction.previous,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.focusNodeInputOne,
      required this.labelText,
      required this.textInputAction});

  final FocusNode focusNodeInputOne;
  final String labelText;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(Icons.mail),
        border: OutlineInputBorder());

    return TextField(
      textInputAction: textInputAction,
      focusNode: focusNodeInputOne,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      buildCounter: (BuildContext context,
          {int? currentLength, bool? isFocused, int? maxLength}) {
        return Row(
          children: [
            AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 10,
                width: 10.0 * (currentLength ?? 0),
                color: Colors.green),
          ],
        );
      },
      maxLength: 24,
      decoration: inputDecoration,
    );
  }
}
