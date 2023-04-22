import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/shop.dart';
import '../classes/mediaQuery.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  // set bottom tab screen //
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        /* bottombar Section */
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
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        icon: Image.asset(
                          'assets/home.png',
                          height: 26,
                        ),
                      ),
                      SizeConfig().p12regM('Home', 12),
                    ],
                  ),

                  // statistics //

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        enableFeedback: false,
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/Chart.png',
                          height: 26,
                        ),
                      ),
                      SizeConfig().p12medB('Statistics', 12),
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
                          'assets/user.png',
                          height: 26,
                        ),
                      ),
                      SizeConfig().p12regM('Profile', 12),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizeConfig().p18medB('Statistic', 18),
                        const SizedBox(
                          width: 50,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          },
                          icon: Image.asset(
                            'assets/option.png',
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // mb drpdown //
                        SizedBox(
                          width: 80,
                          height: 50,
                          child: Card(
                            color: style.white,
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              side: BorderSide(color: style.outline),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizeConfig().p14medB('MB', 12),
                                  Icon(Icons.arrow_drop_down_outlined),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // mb drpdown //
                        SizedBox(
                          width: 95,
                          height: 50,
                          child: Card(
                            color: style.white,
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              side: BorderSide(color: style.outline),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizeConfig().p14medB('Today', 12),
                                  const Icon(Icons.arrow_drop_down_outlined),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Image.asset('assets/graph.png'),
                    const SizedBox(
                      height: 16,
                    ),

                    // tab details //

                    const TabBar(
                        labelColor: style.black,
                        indicatorColor: style.primary,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 4,
                        indicatorPadding: EdgeInsets.only(left: 4, right: 4),
                        unselectedLabelColor: style.textSecond,
                        tabs: [
                          Tab(
                            text: 'Credits',
                          ),
                          Tab(
                            text: 'Internet Quota',
                          ),
                        ]),

                    const SizedBox(
                      height: 32,
                    ),

                    // google chrome //
                    SizedBox(
                        width: 327,
                        height: 110,
                        child: Card(
                          color: style.white,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/chrome.png',
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizeConfig()
                                                .p16medB('Google Chrome', 14),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            SizeConfig().p14reg('1 Hour', 14),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizeConfig().p16medB('1GB', 16),
                                  ],
                                ),
                                Image.asset('assets/greenSlider.png'),
                              ],
                            ),
                          ),
                        )),

                    const SizedBox(
                      height: 16,
                    ),

                    // safari //

                    SizedBox(
                        width: 327,
                        height: 110,
                        child: Card(
                          color: style.white,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/safari.png',
                                          height: 40,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizeConfig().p16medB('Safari', 14),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            SizeConfig().p14reg('1 Hour', 14),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizeConfig().p16medB('9GB', 16),
                                  ],
                                ),
                                Image.asset('assets/greenSlider.png'),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
