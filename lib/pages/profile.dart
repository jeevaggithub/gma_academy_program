import 'package:flutter/material.dart';
// import 'package:gma_academy_program/pages/footer.dart';
// import 'package:gma_academy_program/pages/header.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenSate();
}

class _ProfileScreenSate extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            // HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // const SizedBox(height: 15),
                    // Additional content here
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 30,
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, routeName);
                            },
                            child: const Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.black,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lock_person,
                            color: Colors.grey,
                            size: 30,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text(
                              "Logout",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // FooterWidget(),
          ],
        ),
      ),
    );
  }
}
