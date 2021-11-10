import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text(
          'Form & Validation',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
