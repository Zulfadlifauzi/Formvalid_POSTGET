import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  _GetDataScreenState createState() => _GetDataScreenState();
}

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class _GetDataScreenState extends State<GetDataScreen> {
  String url = 'https://reqres.in/api/users?page=2';

  Future apiService() async {
    http.Response response;
    response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listResponse = mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiService();
  }

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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text('GET Data from API'),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: false,
                  physics: BouncingScrollPhysics(),
                  itemCount: listResponse == null ? 0 : listResponse!.length,
                  itemBuilder: (context, index) {
                    if (listResponse != null) {
                      return Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Image.network(
                                    listResponse![index]['avatar'])),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(listResponse![index]['first_name']),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(listResponse![index]['last_name']),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(listResponse![index]['email']),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Container(
                        child: Center(
                      child: CircularProgressIndicator(),
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
