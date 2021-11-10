import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moduleapp/models/list_module.dart';
import 'package:moduleapp/screens/form_valid.dart';

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
          'WIDGETS',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: const [
                    Text('Widgets'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: 20,
                          height: 40,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: const [
                              Text('1.'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Scaffold')
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: const [
                              Text('2.'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Appbar')
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          color: Colors.blue,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: const [
                              Text('3.'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Floating Action Button')
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          color: Colors.blue,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: const [
                              Text('4.'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Drawer')
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
