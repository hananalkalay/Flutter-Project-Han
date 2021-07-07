import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  const InputText({Key? key}) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextFormField(
          initialValue: '',
          decoration: const InputDecoration(
            labelText: 'Label text',
            border: OutlineInputBorder(),
            /*suffixIcon: Icon(
              Icons.check,
            ),*/
          ),
        ),
      ),
    );
  }
}
