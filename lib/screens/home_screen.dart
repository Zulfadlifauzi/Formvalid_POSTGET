import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moduleapp/screens/form_valid.dart';
import 'package:moduleapp/screens/post_screen.dart';

import 'get_data_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form,POST & GET',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FormAndValidationScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: 180,
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                            width: 150,
                            height: 150,
                            image: AssetImage('assets/tarsoft.png')),
                        Text(
                          'Form & Validation',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PostDataScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: 180,
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                            width: 150,
                            height: 150,
                            image: AssetImage('assets/tarsoft.png')),
                        Text(
                          'POST Data',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print('woii');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GetDataScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 180,
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                                width: 150,
                                height: 150,
                                image: AssetImage('assets/tarsoft.png')),
                            Text(
                              'GET Data',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
