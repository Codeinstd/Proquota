import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/SuccessOTP.dart';
import 'package:proquota/screens/chooseSignUp.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({Key? key}) : super(key: key);

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  FocusNode inputNode = FocusNode();
// to open keyboard call this function;
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

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
                        SizeConfig().h4txtB('Verify Code', 24),
                        const SizedBox(height: 16),
                        SizeConfig().p14reg(
                            'The confirmation code was sent via email esmerald@gmail.com',
                            24),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // New Password//

                  SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // pin 1 //
                      Container(
                        height: 67,
                        width: 67,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        // margin: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                focusNode: inputNode,
                                autofocus: true,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                cursorColor: style.primary,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "*",
                                  hintStyle: TextStyle(color: style.textSecond),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // pin 2//
                      Container(
                        height: 67,
                        width: 67,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        // margin: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                cursorColor: style.primary,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "*",
                                  hintStyle: TextStyle(color: style.textSecond),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // pin 3//
                      Container(
                        height: 67,
                        width: 67,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        // margin: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                cursorColor: style.primary,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "*",
                                  hintStyle: TextStyle(color: style.textSecond),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // pin 4 //
                      Container(
                        height: 67,
                        width: 67,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        // margin: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                cursorColor: style.primary,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "*",
                                  hintStyle: TextStyle(color: style.textSecond),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),

                  const SizedBox(
                    height: 24,
                  ),

                  const SizedBox(
                    height: 32,
                  ),

                  // Resend //
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(builder: (context) => chooseSignUp()),
                      // );
                    }, // button pressed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizeConfig().p14reg('Dont get the code', 14),
                        SizeConfig().spaceW(2),
                        SizeConfig().p14medC('Resend', 14), // icon
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
                                builder: (context) => const SucessOTP()),
                          );
                        },
                        child: SizeConfig().p14medW('Verify Now', 14)),
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
