import 'package:flutter/material.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/setting.dart';
import '../classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';

// ignore: camel_case_types
class notify extends StatefulWidget {
  const notify({super.key});

  @override
  State<notify> createState() => _notify();
}

// ignore: camel_case_types
class _notify extends State<notify> {
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
                                return const Profile();
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
                        width: 80,
                      ),
                      SizeConfig().p18medB('Notification', 18),
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
                    // Notification Section  01 //

                    SizedBox(
                      width: 375,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p16medB('27 Dec 2022', 16),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                                color: style.primary,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // notify 01 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/-checkbox.png',
                                    height: 24,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB(
                                          'Your order has been successful', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('Happy with 10GB', 12),
                                    ],
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 24,
                              ),

                              // notify 02 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/discounts.png',
                                    height: 28,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig()
                                          .p14medB('Discount Alert', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig().p12reg(
                                          'Up to 50% discount when you buy credits now',
                                          12),
                                    ],
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 24,
                              ),

                              // notify 3 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/-checkbox.png',
                                    height: 24,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB(
                                          'Your order has been successful', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('Happy with 10GB', 12),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // Notification Section  01 //

                    SizedBox(
                      width: 375,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p16medB('26 Dec 2022', 16),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                                color: style.primary,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // notify 01 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/-checkbox.png',
                                    height: 24,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB(
                                          'Your order has been successful', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('Happy with 10GB', 12),
                                    ],
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 24,
                              ),

                              // notify 02 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/discounts.png',
                                    height: 28,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig()
                                          .p14medB('Discount Alert', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig().p12reg(
                                          'Up to 50% discount when you buy credits now',
                                          12),
                                    ],
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 24,
                              ),

                              // notify 3 //
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/-checkbox.png',
                                    height: 24,
                                  ),
                                  SizeConfig().spaceW(2),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizeConfig().p14medB(
                                          'Your order has been successful', 14),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizeConfig()
                                          .p12reg('Happy with 10GB', 12),
                                    ],
                                  ),
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
