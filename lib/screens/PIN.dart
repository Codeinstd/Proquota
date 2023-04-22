import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/forgotPwd.dart';
import 'package:proquota/screens/splash.dart';
import 'package:flutter/services.dart';
import 'package:proquota/screens/successOrder.dart';
import '../classes/mediaQuery.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  FocusNode inputNode = FocusNode();
// to open keyboard call this function;
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar //
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
                                return Splash();
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

      // body section //

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // header //

                    SizeConfig().h4txtB('Enter Your Pin', 20),
                    const SizedBox(
                      height: 8,
                    ),
                    SizeConfig().p12reg(
                        'Enter to secure your payment or your order', 12),
                    const SizedBox(
                      height: 40,
                    ),

                    // pin row //

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // pin 1 //
                        SizedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: style.bgneutral2,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: style.primary,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 6),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        // pin 2 //
                        SizedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: style.bgneutral2,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: style.primary,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 6),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        // pin 3 //

                        SizedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: style.bgneutral2,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: style.primary,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 6),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        // pin 4 //
                        SizedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: style.bgneutral2,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: TextField(
                                  focusNode: inputNode,
                                  autofocus: true,
                                  cursorColor: style.primary,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 6),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        // pin 5 //
                        SizedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: style.bgneutral2,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: style.primary,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 6),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    SizedBox(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const ForgotPwd()),
                            );
                          },
                          child: SizeConfig().p12medC('Forgot your PIN?', 12)),
                    ),

                    const SizedBox(
                      height: 380,
                    ),
                    // button 2 //
                    SizedBox(
                      width: 375,
                      height: 56,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(style.primary),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const SuccessOrder()),
                            );
                          },
                          child: SizeConfig().p14medW('Confirm', 14)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
