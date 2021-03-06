import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moduleapp/models/login_model.dart';

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

  late LoginRequestModel requestModel;

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    requestModel = LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POST Data to API',
          style: GoogleFonts.staatliches(letterSpacing: 5),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(children: [
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
                  onSaved: (input) => requestModel.name = input,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Please enter your name';
                    } else if (value.isEmpty) {
                      return 'Required';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (input) => requestModel.email = input,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Enter your email',
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return 'Please enter your email';
                  //   } else if (value.isNotEmpty ||
                  //       !RegExp('^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]')
                  //           .hasMatch(value)) {
                  //     return 'Invalid email';
                  //   } else {
                  //     return null;
                  //   }
                  // },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (input) => requestModel.password = input,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  controller: passController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Enter your Pasword',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length <= 5 && value.isNotEmpty) {
                      return 'At least 6 characters';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {
                      if (validateAndSave()) {
                        print(requestModel.toJson());
                      }
                      if (_formKey.currentState!.validate()) {}
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Successfully Submit')));
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
      ),
    );
  }
}
