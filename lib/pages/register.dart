import 'package:flutter/material.dart';

import 'package:gma_academy_program/methods/datastoring.dart';
// import 'package:gma_academy_program/methods/printMethod.dart';

class RegisterFrom extends StatefulWidget {
  const RegisterFrom({super.key});

  @override
  State<RegisterFrom> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterFrom> {
  final _registeFormKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    //Clean up the controller instances when the widget is disposed
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 200,
                  'assets/images/gma_logo.png',
                ),
                Form(
                  key: _registeFormKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'First name',
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            ' *',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _firstNameController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: OutlineInputBorder(),
                          fillColor: Colors.black,
                          filled: true,
                          hintText: '   First name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the first name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'Last name',
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            ' *',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _lastNameController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: OutlineInputBorder(),
                          fillColor: Colors.black,
                          filled: true,
                          hintText: '   Last name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the last name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'Email',
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            ' *',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _emailController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: OutlineInputBorder(),
                          fillColor: Colors.black,
                          filled: true,
                          hintText: '   Email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the emailId';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'Mobile',
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            ' *',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _mobileController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: OutlineInputBorder(),
                          fillColor: Colors.black,
                          filled: true,
                          hintText: '   Mobile',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the mobile number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'Password',
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            ' *',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: OutlineInputBorder(),
                          fillColor: Colors.black,
                          filled: true,
                          hintText: '   Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'Confirm Password',
                          ),
                          Text(
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            ' *',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _confirmpasswordController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10),
                          border: OutlineInputBorder(),
                          fillColor: Colors.black,
                          filled: true,
                          hintText: '   Confirm Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Re-enter the password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(
                                    color: Colors.white, width: 2),
                                // Set border radius
                              ),
                            ),

                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue), // Set background color
                          ),
                          onPressed: () {
                            // Validate returns true if the form is valid, or false otherwise.
                            if (_registeFormKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.

                              // printMethod(
                              //     _firstNameController.text,
                              //     _lastNameController.text,
                              //     _emailController.text,
                              //     _mobileController.text,
                              //     _passwordController.text,
                              //     _confirmpasswordController.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                              userDetailServer(
                                context,
                                _firstNameController.text,
                                _lastNameController.text,
                                _emailController.text,
                                _mobileController.text,
                                _passwordController.text,
                              );
                            }
                          },
                          child: const Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            "REGISTER",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(
                                    color: Colors.white, width: 2),
                                // Set border radius
                              ),
                            ),

                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.redAccent), // Set background color
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/startscreen');
                          },
                          child: const Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            "cancel",
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
