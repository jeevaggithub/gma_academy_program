import 'package:flutter/material.dart';
// import 'package:gma_academy_program/pages/footer.dart';
// import 'package:gma_academy_program/pages/header.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenSate();
}

class _SearchScreenSate extends State<SearchScreen> {
  var _searchController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        height: 40,
        // color: Colors.black,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 1),
        child: TextFormField(
          // cursorColor: Colors.black,

          controller: _searchController,
          style: const TextStyle(
            color: Colors.grey, // Specify the desired text color
          ),
          decoration: const InputDecoration(
            hintText: '   serach',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red), // Change border color
            ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(50),
            //   borderSide: const BorderSide(
            //       color: Colors.black), // Change box outline color
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(50),
            //   borderSide: const BorderSide(
            //       color: Colors.black), // Change box outline color when focused
            // ),
            filled: true,
            fillColor: Colors.black, // Change background color
            // labelText: 'Search',
            // labelStyle: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
