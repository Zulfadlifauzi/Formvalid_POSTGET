import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:moduleapp/models/login_model.dart';

String? stringResponse;

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = 'http://api.staging.tarsoft.co/api/login';

    final response =
        await http.post(Uri.parse(url), body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.statusCode);
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
