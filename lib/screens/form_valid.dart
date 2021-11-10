import 'package:flutter/material.dart';

class FormAndValidationScreen extends StatefulWidget {
  const FormAndValidationScreen({Key? key}) : super(key: key);

  @override
  _FormAndValidationState createState() => _FormAndValidationState();
}

class _FormAndValidationState extends State<FormAndValidationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form & Validation'),
        centerTitle: true,
      ),
    );
  }
}
