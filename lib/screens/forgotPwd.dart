// ignore: file_names
import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/NewPwd.dart';
import 'package:proquota/screens/chooseSignUp.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({Key? key}) : super(key: key);

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          'assets/cirbkbtn.png',
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizeConfig().h4txtB('Forget Password?', 24),
                        const SizedBox(height: 16),
                        SizeConfig().p14reg(
                            'Type your email, we will send you verification code via email',
                            24),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // btn//

                  Container(
                    height: 56,
                    width: 327,
                    decoration: BoxDecoration(
                      color: style.bgneutral2,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    // margin: const EdgeInsets.all(0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Image.asset(
                            'assets/mail icon.png',
                            height: 24,
                            color: style.textSecond,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Input Email",
                              hintStyle: TextStyle(color: style.textSecond),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                            ),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: style.textPrimary,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 40,
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
                                builder: (context) => const NewPwd()),
                          );
                        },
                        child: SizeConfig().p14medW('Submit', 14)),
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
