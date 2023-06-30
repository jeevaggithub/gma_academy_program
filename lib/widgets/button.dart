import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String myData;
  const Button({required this.myData, super.key});
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20.0),
      //   border: Border.all(
      //     color: Colors.white,
      //     width: 1.0,
      //   ),
      // ),
      child: OutlinedButton(
          onPressed: () {
            if (widget.myData == "Register Now") {
              Navigator.pushNamed(context, '/register');
            }
            if (widget.myData == "SIGN IN") {
              Navigator.pushNamed(context, '/login');
            }
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.white, width: 2),
                // Set border radius
              ),
            ),

            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.blue), // Set background color
          ),
          child: Text(
            widget.myData,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
