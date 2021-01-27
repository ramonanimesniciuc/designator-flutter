import 'dart:convert';

import 'package:designator/src/models/user.model.dart';
import 'package:http/http.dart' show Client;
import 'dart:async';
class UserApiProvider{
  Client client = Client();

  Future<User> fetchUsers() async {
    print("entered");
    final response = await client
        .get("http://192.168.0.115:3040/users");
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return User.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

}