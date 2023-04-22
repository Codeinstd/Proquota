import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/orderHistory.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/setting.dart';
import 'package:proquota/screens/shop.dart';
import 'package:proquota/screens/statistics.dart';
import 'package:proquota/screens/switch.dart';
import '../classes/mediaQuery.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottombar Section //
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          elevation: 10,
          backgroundColor: style.primary,
          onPressed: () {},
          child: IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const shop()),
              );
            },
            icon: Image.asset(
              'assets/shop.png',
              height: 32,
            ),
            // style: SizeConfig().p12regM('shop', 12),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 62,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // home //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      icon: Image.asset(
                        'assets/home.png',
                        height: 26,
                      ),
                    ),
                    SizeConfig().p12reg('Home', 12),
                  ],
                ),

                // statistics //

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const Statistics()),
                        );
                      },
                      icon: Image.asset(
                        'assets/statistic.png',
                        height: 26,
                      ),
                    ),
                    SizeConfig().p12regM('Statistics', 12),
                  ],
                ),

                const SizedBox.shrink(),
                const SizedBox.shrink(),

                // star//
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const Points()),
                        );
                      },
                      icon: Image.asset(
                        'assets/star.png',
                        height: 26,
                      ),
                    ),
                    SizeConfig().p12regM('Points', 12),
                  ],
                ),

                // user //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const Profile()),
                        );
                      },
                      icon: Image.asset(
                        'assets/user2.png',
                        height: 26,
                      ),
                    ),
                    SizeConfig().p12medB('Profile', 12),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizeConfig().p18medB('Profile', 18),
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Setting()),
                          );
                        },
                        icon: Image.asset(
                          'assets/setting.png',
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

      // body //

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // card details //

                      SizedBox(
                          height: 80,
                          width: 325,
                          child: Card(
                            elevation: 0,
                            color: style.primary,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  left: 16,
                                  right: 16,
                                  bottom: 16,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/avatar01.png',
                                                height: 36,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizeConfig()
                                                      .p16medW('Esmeralda', 16),
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  SizeConfig().p11medW(
                                                      '+62123445678912', 12),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 85,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const switchScreen()),
                                                    );
                                                  },
                                                  child: SizeConfig()
                                                      .p14medW('Switch', 14)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                      const SizedBox(
                        height: 24,
                      ),

                      // Active pck section //
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizeConfig().p18medB('Active Package', 18),
                            const SizedBox(
                              height: 12,
                            ),

                            // card info section //
                            Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 16, bottom: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/internet.png',
                                      height: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizeConfig().p14reg('Internet', 12),
                                            const SizedBox(
                                              width: 145,
                                            ),
                                            SizeConfig().p14reg('4 Days', 12),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SizeConfig().p16medB('16GB', 16),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/slider(red).png',
                                              height: 7,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 6,
                            ),

                            // card info section //
                            Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 16, bottom: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/call icon.png',
                                      height: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizeConfig().p14reg('Call', 12),
                                            const SizedBox(
                                              width: 175,
                                            ),
                                            SizeConfig().p14reg('5 Days', 12),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SizeConfig().p16medB('10min', 16),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/slider(call).png',
                                              height: 7,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 6,
                            ),

                            // card info section //
                            Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 16, bottom: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/msg icon.png',
                                      height: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizeConfig().p14reg('Message', 12),
                                            const SizedBox(
                                              width: 140,
                                            ),
                                            SizeConfig().p14reg('6 Days', 12),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SizeConfig().p16medB('1444', 16),
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/slider(msg).png',
                                              height: 7,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 24,
                      ),

                      // History section //
                      SizedBox(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizeConfig().p18medB('History', 18),
                              const SizedBox(
                                height: 12,
                              ),

                              // card info section //
                              Card(
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const OrderHistory()),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/clock.png',
                                              height: 50,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            SizeConfig()
                                                .p16medB('Order History', 16),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/arrow-down.png',
                                              height: 24,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
