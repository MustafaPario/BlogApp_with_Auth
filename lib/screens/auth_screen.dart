import 'package:blog_app/components/rounded_button.dart';
import 'package:blog_app/screens/login.dart';
import 'package:blog_app/screens/signin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/intrologo.png',
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              SizedBox(height: 30),
              RoundButton(
                  title: 'Login',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginIn()));
                  }),
              SizedBox(height: 30),
              RoundButton(
                  title: 'Register',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
