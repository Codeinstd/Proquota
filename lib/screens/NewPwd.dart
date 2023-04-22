import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/VerifyOTP.dart';
import 'package:proquota/screens/chooseSignUp.dart';

class NewPwd extends StatefulWidget {
  const NewPwd({Key? key}) : super(key: key);

  @override
  State<NewPwd> createState() => _NewPwdState();
}

class _NewPwdState extends State<NewPwd> {
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
                        SizeConfig().h4txtB('New Password?', 24),
                        const SizedBox(height: 16),
                        SizeConfig()
                            .p14reg('Create your new password to Login', 24),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // New Password//

                  Container(
                    height: 56,
                    width: 327,
                    decoration: BoxDecoration(
                      color: style.bgneutral2,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    // margin: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Image.asset(
                            'assets/key icon.png',
                            height: 24,
                            color: style.textSecond,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "New Password",
                              hintStyle: TextStyle(color: style.textSecond),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                            ),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: style.textPrimary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 16,
                          ),
                          child: Image.asset(
                            'assets/eye icon.png',
                            height: 24,
                            color: style.textSecond,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // New Password//

                  Container(
                    height: 56,
                    width: 327,
                    decoration: BoxDecoration(
                      color: style.bgneutral2,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    // margin: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Image.asset(
                            'assets/key icon.png',
                            height: 24,
                            color: style.textSecond,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(color: style.textSecond),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                            ),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: style.textPrimary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 16,
                          ),
                          child: Image.asset(
                            'assets/eye icon.png',
                            height: 24,
                            color: style.textSecond,
                          ),
                        ),
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
                                builder: (context) => const VerifyOTP()),
                          );
                        },
                        child: SizeConfig().p14medW('Reset Password', 14)),
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
