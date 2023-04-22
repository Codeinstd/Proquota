import 'package:flutter/material.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/setting.dart';
import '../classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';

// ignore: camel_case_types
class switchScreen extends StatefulWidget {
  const switchScreen({super.key});

  @override
  State<switchScreen> createState() => _switchScreen();
}

// ignore: camel_case_types
class _switchScreen extends State<switchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar section //

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
                                return const Setting();
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
                      const SizedBox(
                        width: 60,
                      ),
                      SizeConfig().p18medB('Switch Account', 18),
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
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 375,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // account 01 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/avatar01.png',
                                    height: 40,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB('Esmeralda', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('+62123445678912', 12),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 140,
                                  ),
                                  Image.asset(
                                    'assets/arrow-down.png',
                                    height: 24,
                                  )
                                ],
                              ),

                              const SizedBox(
                                height: 32,
                              ),

                              // account 02 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/avatar02.png',
                                    height: 40,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB('Mocca Caribou', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('+62987654321123', 12),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Image.asset(
                                    'assets/counter.png',
                                    height: 24,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(
                                    'assets/arrow-down.png',
                                    height: 24,
                                  )
                                ],
                              ),

                              const SizedBox(
                                height: 32,
                              ),

                              // account 03 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/avatar02.png',
                                    height: 40,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB('Phoveus', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('+62987654321123', 12),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 140,
                                  ),
                                  Image.asset(
                                    'assets/arrow-down.png',
                                    height: 24,
                                  )
                                ],
                              ),

                              const SizedBox(
                                height: 32,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/avatar01.png',
                                    height: 40,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB('Joyo Boyo', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('+62987654321123', 12),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Image.asset(
                                    'assets/counter.png',
                                    height: 24,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(
                                    'assets/arrow-down.png',
                                    height: 24,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
