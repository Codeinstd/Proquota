import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/TradePoints.dart';
import 'package:proquota/screens/TradePoints2.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/shop.dart';
import 'package:proquota/screens/statistics.dart';
import '../classes/mediaQuery.dart';

class Points extends StatefulWidget {
  const Points({super.key});

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  // set bottom tab screen //
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/points icon.png',
                          height: 26,
                        ),
                      ),
                      SizeConfig().p12medB('Points', 12),
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
                        SizeConfig().p18medB('Points', 18),
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
                    // card details //

                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const TradePoint2()),
                        );
                      },
                      child: SizedBox(
                        height: 185,
                        width: 340,
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
                                left: 20,
                                right: 20,
                                bottom: 0,
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizeConfig()
                                                .p11medW('Legends Card', 12),
                                            Image.asset(
                                              'assets/EMV Chip.png',
                                              height: 24,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizeConfig().h1txtW('10.040', 24),
                                            SizeConfig().p12medW('Points', 12),
                                            const SizedBox(
                                              width: 68,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizeConfig()
                                                .p12medW('05/05/2029', 12),
                                            SizeConfig()
                                                .p12medW('+62123445678912', 12),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // legends info //
                    SizedBox(
                        width: 327,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizeConfig().p14medB('Legends', 14),
                                  SizeConfig().p12regM(
                                      '2 transaction again to reach Savage',
                                      16),
                                ],
                              ),
                              Image.asset('assets/BlueSlider.png'),
                            ],
                          ),
                        )),

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
                            text: 'Basic',
                          ),
                          Tab(
                            text: 'Legends',
                          ),
                          Tab(
                            text: 'Savings',
                          ),
                        ]),

                    const SizedBox(
                      height: 40,
                    ),

                    // benefits of legends //

                    SizedBox(
                      width: 375,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizeConfig().p16medB('Benefit of Legends User', 16),
                          SizeConfig().spaceH(2),
                          SizeConfig().p14reg(
                              '1. Always get a discount of 10 percent on all available items, Terms and Conditions apply',
                              14),
                          SizeConfig().spaceH(2),
                          SizeConfig().p14reg(
                              '2. Get free admin fees on all transactions and on all items in this application',
                              14),
                        ],
                      ),
                    )
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
