import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  final FocusNode focusNodeInputOne = FocusNode();
  final FocusNode focusNodeInputTwo = FocusNode();
  final FocusNode focusNodeInputThree = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create an account',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            CustomTextField(
              focusNodeInputOne: focusNodeInputOne,
              labelText: 'Username or Email',
              prefixIcon: const Icon(Icons.person),
            ),
            CustomTextField(
              focusNodeInputOne: focusNodeInputTwo,
              labelText: 'Password',
              prefixIcon: const Icon(Icons.lock),
            ),
            CustomTextField(
              focusNodeInputOne: focusNodeInputThree,
              labelText: 'ConfirmPassword',
              prefixIcon: const Icon(Icons.lock),
            ),
            const Text(
              'By clicking the Register button, you agree to the public offer',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF676767),
                  fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF83758),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Image.asset('assets/images/google_fb.png'),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Padding(
                padding: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'I Already Have an Account',
                      style: TextStyle(fontSize: 14, color: Color(0xFF575757)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFF83758),
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.focusNodeInputOne,
    required this.labelText,
    required this.prefixIcon,
  });

  final FocusNode focusNodeInputOne;

  final String labelText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      buildCounter: (BuildContext context,
          {int? currentLength, bool? isFocused, int? maxLength}) {
        return AnimatedContainer(
          duration: const Duration(
            seconds: 1,
          ),
          height: 10,
          width: 10.0 * (currentLength ?? 0),
          color: Colors.blue[50 * ((currentLength ?? 0 ~/ 2))],
        );
      },
      focusNode: focusNodeInputOne,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
