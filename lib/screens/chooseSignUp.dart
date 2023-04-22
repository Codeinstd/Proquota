import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/login.dart';
import 'package:proquota/screens/register.dart';

// ignore: camel_case_types
class chooseSignUp extends StatefulWidget {
  const chooseSignUp({Key? key}) : super(key: key);

  @override
  State<chooseSignUp> createState() => _chooseSignUpState();
}

// ignore: camel_case_types
class _chooseSignUpState extends State<chooseSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 80, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo 02.png',
                  height: 40,
                ),
                const SizedBox(
                  height: 80,
                ),
                SizeConfig().h3txtB('Let’s Get Started', 36),
                const SizedBox(
                  height: 24,
                ),
                SizeConfig().p16reg(
                    'Find the right data plan and what you want just in proquota',
                    36),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 375,
                  height: 56,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(style.bgneutral),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                      ),
                    ),
                    onPressed: () async {
                      // navigate directly to home page
                      // final prefs = await SharedPreferences.getInstance();
                      // prefs.setBool('showHome', true);

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    // button color
                    // button pressed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/mail icon.png',
                          height: 24,
                        ),
                        SizeConfig().spaceW(2),
                        SizeConfig().p14medB('Sign Up with Email', 14), // icon
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizeConfig().p16reg('Or use instant sign up', 16),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 375,
                  height: 56,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(style.primary),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                      ),
                    ),
                    onPressed: () async {},
                    // button color
                    // button pressed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/google icon.png',
                          height: 24,
                        ),
                        SizeConfig().spaceW(2),
                        SizeConfig().p14medW('Sign Up with Google', 14), // icon
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                SizedBox(
                  width: 375,
                  height: 56,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(style.black),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                      ),
                    ),
                    onPressed: () async {},
                    // button color
                    // button pressed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/apple icon.png',
                          height: 24,
                        ),
                        SizeConfig().spaceW(2),
                        SizeConfig().p14medW('Sign Up with Apple', 14), // icon
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }, // button pressed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizeConfig().p14reg('Already Have an Account?', 14),
                      SizeConfig().spaceW(2),
                      SizeConfig().p14medC('Sign In', 14), // icon
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ])));
  }
}
