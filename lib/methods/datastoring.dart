import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:gma_academy_program/variables/variable.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> userDetailServer(BuildContext context, String firstName,
    String lastName, String email, mobile, String password) async {
  var url = baseurl + 'insert.php';

  // print(url);
  // print(lastName);
  // print(email);
  // print(mobile);
  // print(password);

  var name = firstName + lastName;

  var response = await http.post(
    Uri.parse(url),
    body: {
      'name': name,
      'email': email,
      'mobile': mobile,
      'password': password,
    },
  );

  if (response.statusCode == 200 &&
      response.body == 'Data inserted successfully') {
    // Request successful, handle the response from the server
    print('Form data sent successfully');
    print('Response: ${response.body}');

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('success'),
          content: Text(name + ' is registered as user , please login '),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
                // Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Go to login'),
            ),
          ],
        );
      },
    );
  }
  if (response.body != "Data inserted successfully") {
    // User already exists, show popup message
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('User Already Exists'),
          content: const Text(
              'The user already exists. Please try again with a different email.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );

    print("user already exist");
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //       content: Text(
    //           'The user already exists. Please try again with a different email.')),
    // );
  } else {
    // print('Error sending form data. Status code: ${response.statusCode}');
    // print('Error sending form data. Status code: ${response.statusCode}');
  }
}
