import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/chooseSignUp.dart';
import 'package:proquota/screens/home.dart';

class SucessOTP extends StatefulWidget {
  const SucessOTP({Key? key}) : super(key: key);

  @override
  State<SucessOTP> createState() => _SucessOTPState();
}

class _SucessOTPState extends State<SucessOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar//
      appBar: AppBar(
        backgroundColor: style.white,
        elevation: 0,
        actions: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 2, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const chooseSignUp();
                              },
                            ),
                          );
                        },
                        icon: Image.asset(
                          'assets/cancel btn.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // body section//

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
              child: SingleChildScrollView(
                child: Column(children: [
                  // Header//
                  SizedBox(
                    width: 327,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizeConfig().h4txtB('Successfully Registered', 24),
                        const SizedBox(height: 16),
                        SizeConfig().p14reg(
                            'Congratulations, your account is already registered in this application',
                            24),
                      ],
                    ),
                  ),

                  Container(
                    margin:
                        const EdgeInsets.only(left: 30, bottom: 30, right: 30),
                    child: Image.asset(
                      'assets/Register success.png',
                      height: 350,
                    ),
                  ),

                  const SizedBox(
                    height: 32,
                  ),

                  // btn//

                  SizedBox(
                    width: 375,
                    height: 56,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(style.primary),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                          ),
                        ),
                        onPressed: () async {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        child: SizeConfig().p14medW('Homepage', 14)),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
