import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/detail.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/search.dart';
import 'package:proquota/screens/statistics.dart';
import '../classes/mediaQuery.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shop();
}

class _shop extends State<shop> {
  // set bottom tab screen //
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              onPressed: () {},
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
                        SizeConfig().p18medB('Shop', 18),
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
                    // Search Section //

                    Container(
                      width: 320,
                      height: 49,
                      decoration: BoxDecoration(
                        color: style.bgneutral2,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Search()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              child: Image.asset(
                                'assets/search icon 02.png',
                                color: style.textSecond,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizeConfig().p14regM('Try 10GB 1 Month', 14),
                            const SizedBox(
                              width: 100,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/filter.png',
                                color: style.textSecond,
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
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
                            text: 'All',
                          ),
                          Tab(
                            text: 'Credits',
                          ),
                          Tab(
                            text: 'Quota',
                          ),
                          Tab(
                            text: 'Add',
                          ),
                        ]),

                    const SizedBox(
                      height: 32,
                    ),

                    // items list //

                    // Features section //
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // row 1 //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // credit//
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Home()),
                                          );
                                        },
                                        icon: Image.asset(
                                          'assets/insta.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Instagram', 11),
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
                                          'assets/youtube.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Youtube', 11),
                                    ],
                                  ),
                                ],
                              ),

                              // row 2 //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // buy internet //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Home()),
                                          );
                                        },
                                        icon: Image.asset(
                                          'assets/twitter.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Twitter', 11),
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
                                          'assets/fb.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Facebook', 11),
                                    ],
                                  ),
                                ],
                              ),

                              // row 3 //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // credit//
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'assets/tik-tok.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Tik Tok', 11),
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
                                          'assets/medium.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Medium', 11),
                                    ],
                                  ),
                                ],
                              ),

                              // row 4 //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // credit//
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Home()),
                                          );
                                        },
                                        icon: Image.asset(
                                          'assets/whatsapp.png',
                                          height: 48,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizeConfig().p11medB('Whatsapp', 11),
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
                    ),

                    const SizedBox(
                      height: 46,
                    ),

                    SizedBox(
                      width: 375,
                      child: SizeConfig().p16medB('Recent Transaction', 16),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    // card details //
                    SizedBox(
                      width: 327,
                      height: 140,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Detail()),
                          );
                        },
                        child: Card(
                          elevation: 0.2,
                          color: style.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 14, right: 14, top: 12, bottom: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig().p16medB('Happy With 10GB', 16),
                                    Image.asset(
                                      'assets/receipt icon.png',
                                      height: 24,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizeConfig().p12reg(
                                    'Full 14Gb nonstop for your daily activities, Exp in',
                                    12),
                                const SizedBox(
                                  height: 8,
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                SizeConfig().p12reg('1 month', 12),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizeConfig().p14medC('49,500', 14),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
