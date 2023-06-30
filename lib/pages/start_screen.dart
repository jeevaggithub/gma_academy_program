import 'package:flutter/material.dart';

import 'package:gma_academy_program/widgets/button.dart';
import 'package:gma_academy_program/widgets/bullet_list.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/gma_logo.png',
                width: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                'The GMA Academy App offers you all the tools you need to advance in your art, no matter what level you are at.',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                  ),
                  'START YOUR SUBSCRIPTION'),
              const SizedBox(
                height: 10,
              ),
              const Button(myData: "Register Now"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                  ),
                  'ALREADY A MEMBER?'),
              const SizedBox(
                height: 20,
              ),
              const Button(myData: "SIGN IN"),
              const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                '(SECURED WITH ITUNES)',
              ),
              const SizedBox(height: 20),
              const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                'AGREEMENT TO TERMS',
              ),
              const SizedBox(height: 20),
              const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300,
                ),
                'These Terms and conditions constitute a legally binding agreement made between you. whether personally or on behalf of an entity you and GMA Academy app concerning your access to and use of our mobile GMA Academy application. You agree that by accessing the Application, you have read, understood, and agree to be bound by all of these Terms and Conditions Use. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS AND CONDITIONS. THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE APPLICATION AND YOU MUST DISCONTINUE USE IMMEDIATELY...',
              ),
              const SizedBox(height: 20),
              const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300,
                ),
                'Register as new user and able to login with newly registered account. New free trial user can use app with limited digital content access. Only subscribed users can able to view/access full features of app',
              ),
              const SizedBox(
                // decoration: const BoxDecoration(
                //   gradient: LinearGradient(
                //     colors: [
                //       Color.fromARGB(255, 144, 229, 146),
                //       Color.fromARGB(255, 182, 242, 183),
                //     ],
                //   ),
                // ),
                height: double.maxFinite,
                child: BulletPointList(
                  data: [
                    "App Title: GMA ACADEMY",
                    "Period: Subscription Period will be yearly",
                    "Price: USD 124 will be charged as yearly subscription",
                    "Payment: Payment will be charged to iTunes Account at confirmation of purchase by you(user)",
                    "Subscription Auto renewal: Subscription automatically renews unless auto-renew is turned off at least 24-hours before the end of the current period",
                    "Account charged: Account will be charged for renewal within 24-hours prior to the end of the current period and cost of the renewal will be yearly USD 124",
                    "Auto renewal Off : You(User) can manage subscription and auto-renewal may be turned off by going to the user,s account settings after purchase",
                    "Free users: Application have free user access. Free users have limited access of digital content and application. There is no trail period for those free users",
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
