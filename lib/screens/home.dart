import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/TradePoints.dart';
import 'package:proquota/screens/internetQuota.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/purchaseCredit.dart';
import 'package:proquota/screens/shop.dart';
import 'package:proquota/screens/notification.dart';
import 'package:proquota/screens/statistics.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // set bottom tab screen //
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/home icon.png',
                        height: 26,
                      ),
                    ),
                    SizeConfig().p12medB('Home', 12),
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

      // appbar//
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: style.white,
        elevation: 0,
        actions: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 2,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo 02.png',
                          height: 24,
                        ),
                        SizedBox(
                            height: 50,
                            child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: style.outline,
                                        width: 0.5,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 0,
                                    right: 0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            'assets/headphone icon.png',
                                            height: 18,
                                          )),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const notify()),
                                            );
                                          },
                                          icon: Image.asset(
                                            'assets/notification icon.png',
                                            height: 20,
                                          )),
                                    ],
                                  ),
                                )))
                      ])
                ],
              ),
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // cardbox //
                    SizedBox(
                      height: 170,
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
                                                  .p18medW('Esmeralda', 16),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              SizeConfig()
                                                  .p11medW('10.040 points', 12),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 32,
                                          ),
                                          SizeConfig()
                                              .p11medW('+62123445678912', 12)
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizeConfig().h4txtW('Rp.', 24),
                                          SizeConfig().h3txtW('100.000', 24),
                                          const SizedBox(
                                            width: 68,
                                          ),
                                          SizedBox(
                                            child: Card(
                                              color: style.white,
                                              elevation: 0,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Row(
                                                    children: [
                                                      SizeConfig().p14medB(
                                                          'Top Up', 12),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizeConfig().p12reg('05/05/2029', 12),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // Active pck section //
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p18medB('Active Package', 18),
                              SizeConfig().p14regM('See All', 12),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/internet.png',
                                height: 50,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizeConfig().p14reg('Internet', 12),
                                      const SizedBox(
                                        width: 90,
                                      ),
                                      SizeConfig().p14reg('4 Days', 12),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
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
                                        'assets/Slider.png',
                                        height: 8,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/call icon.png',
                                height: 45,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    // Features section //
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p18medB('Features', 18),
                              SizeConfig().p14regM('See All', 12),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // row 1 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // credit//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PurchaseCredit()),
                                              );
                                            },
                                            icon: Image.asset(
                                              'assets/credit.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p11medB('Credit', 11),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 24,
                                      ),

                                      // buy internet//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              'assets/discounts.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p11medB('Discount', 11),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // row 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // buy internet //
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const InternetQuota()),
                                              );
                                            },
                                            icon: Image.asset(
                                              'assets/buy internet.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig()
                                              .p11medB('Buy Internet', 11),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 24,
                                      ),

                                      // buy internet//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              'assets/entertaint.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig()
                                              .p11medB('Entertaint', 11),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // row 3 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // credit//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              'assets/add on.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p11medB('Add Ons', 11),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 24,
                                      ),

                                      // buy internet//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              'assets/games.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p11medB('Games', 11),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // row 4 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // credit//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const TradePoint()),
                                              );
                                            },
                                            icon: Image.asset(
                                              'assets/trade points.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig()
                                              .p11medB('Trade Points', 11),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 24,
                                      ),

                                      // buy internet//
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              'assets/other.png',
                                              height: 48,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p11medB('Other', 11),
                                        ],
                                      ),
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
