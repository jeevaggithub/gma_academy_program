import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:gma_academy_program/variables/variable.dart';

Future<void> userlogin(context, email, password) async {
  // var url = ${baseurl}+'login.php';
  var url = '$baseurl/login.php';
  print(email);
  print(password);

  var response = await http.post(
    Uri.parse(url),
    body: {
      'login_email': email,
      'login_password': password,
    },
  );
  print(response.body);
  print(response.statusCode);
  // print(response);
  if (response.statusCode == 200) {
    // Request successful, handle the response from the server
    print('Form data sent successfully');
    print('User authenticated successfully');
    print('Response: ${response.body}');

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
  } else {}
  if (response.body != "User authenticated" &&
      response.body == "User not registered") {
    print('User not registered');
  }
  if (response.body != "User authenticated" &&
      response.body == "Incorrect password") {
    print('Incorrect password');
  }
}
