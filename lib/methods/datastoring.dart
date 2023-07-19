import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:gma_academy_program/variables/variable.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> userDetailServer(BuildContext context, String firstName,
    String lastName, String email, mobile, String password) async {
  var url = '$baseurl/signup';

  // print(url);
  // print(lastName);
  // print(email);
  // print(mobile);
  // print(password);

  var name = firstName + lastName;

  var response = await http.post(
    Uri.parse(url),
    headers: {'content-type': 'application/json'},
    body: jsonEncode({
      'name': name,
      'email': email,
      'mobile': mobile,
      'password': password,
    }),
  );
  var res = jsonDecode(response.body)["message"];
  print(res);

  if (res == 'User is already exist') {
    print('${res}');
    const snackdemo = SnackBar(
      content: Text('User is already exist'),
      backgroundColor: Colors.redAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  } else if (response.statusCode == 200 && res == 'registered successfuly') {
    // User already exists, show popup message
    print('${res}');
    const snackdemo = SnackBar(
      content: Text('User registered successfuly'),
      backgroundColor: Colors.blueAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
    Navigator.pushNamed(context, '/login');
  }
}
