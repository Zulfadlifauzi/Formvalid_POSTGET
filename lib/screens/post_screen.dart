import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDataScreen extends StatefulWidget {
  const PostDataScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<PostDataScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POST Data to API',
          style: GoogleFonts.staatliches(letterSpacing: 5),
        ),
        key: scaffoldKey,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Post Data to API',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: 'Enter your name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name required';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: 'Enter your email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Enter your Pasword',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Container(
                    width: double.infinity,
                    child: const Text(
                      'Submit',
                      textAlign: TextAlign.center,
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }

//ignore: must_be_immutable
}
