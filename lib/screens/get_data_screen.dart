import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  _GetDataScreenState createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get Data from API',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
