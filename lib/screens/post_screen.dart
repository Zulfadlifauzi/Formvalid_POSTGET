import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDataScreen extends StatefulWidget {
  const PostDataScreen({Key? key}) : super(key: key);

  @override
  _PostDataScreenState createState() => _PostDataScreenState();
}

class _PostDataScreenState extends State<PostDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post Data to API',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
