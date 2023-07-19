import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:gma_academy_program/variables/variable.dart';

Future<void> userlogin(context, email, password) async {
  // var url = ${baseurl}+'login.php';
  var url = '$baseurl/signin';
  // print(email);
  // print(password);
  // print(jsonEncode({
  //   'email': email,
  //   'password': password,
  // }));

  var response = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json'
    }, // Set the correct origin header
    body: jsonEncode({
      'email': email,
      'password': password,
    }),
  );
  const emailerr = 'Invalid email';
  var res = jsonDecode(response.body)["message"];
  print(res);
  print('ytbiiiy   ${res}');
  print(response.statusCode);
  // print((response));
  if (response.statusCode == 401 && res == emailerr) {
    // Request successful, handle the response from the server
    // print('Form data sent successfully');
    // print('User authenticated successfully');
    print('ygbufuufu${res}');
    const snackdemo = SnackBar(
      content: Text('User does not exist'),
      backgroundColor: Colors.redAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  } else if (response.statusCode == 401 && res == 'Invalid password') {
    print(res);
    const snackdemo = SnackBar(
      content: Text('password does not match'),
      backgroundColor: Colors.redAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  } else if (response.statusCode == 200 && res == 'user authenticated') {
    print(res);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('success'),
          content: Text(email + ' authenticated successfully'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
                // Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Go to dashboard'),
            ),
          ],
        );
      },
    );
  }
}
