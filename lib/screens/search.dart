import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/detail.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/searchResult.dart';
import 'package:proquota/screens/shop.dart';
import 'package:proquota/screens/statistics.dart';
import '../classes/mediaQuery.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizeConfig().p18medB('Search', 18),
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const shop()),
                          );
                        },
                        icon: Image.asset(
                          'assets/cancel btn.png',
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: SingleChildScrollView(
                child: Column(children: [
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
                              builder: (context) => const SearchResult()),
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

                  // card info section //

                  SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // card box 01//
                              SizedBox(
                                width: 160,
                                height: 102,
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
                                          left: 14,
                                          right: 14,
                                          top: 10,
                                          bottom: 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p16medB('5,0000', 16),
                                              Image.asset(
                                                'assets/receipt icon.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p12regM('Price', 12),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p14medC('Rp. 4.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // card box 2 //
                              SizedBox(
                                width: 160,
                                height: 102,
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
                                          left: 14,
                                          right: 14,
                                          top: 10,
                                          bottom: 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p16medB('10,0000', 16),
                                              Image.asset(
                                                'assets/receipt icon.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p12regM('Price', 12),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p14medC('Rp. 9.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 16,
                          ),
                          // row section 2 //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // card box 01//
                              SizedBox(
                                width: 160,
                                height: 102,
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
                                          left: 14,
                                          right: 14,
                                          top: 10,
                                          bottom: 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p16medB('5,0000', 16),
                                              Image.asset(
                                                'assets/receipt icon.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p12regM('Price', 12),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p14medC('Rp. 4.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // card box 2 //
                              SizedBox(
                                width: 160,
                                height: 102,
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
                                          left: 14,
                                          right: 14,
                                          top: 10,
                                          bottom: 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p16medB('10,0000', 16),
                                              Image.asset(
                                                'assets/receipt icon.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p12regM('Price', 12),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p14medC('Rp. 9.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // Features section //
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizeConfig().p18medB('Features', 18),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
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
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Home()),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                      const Home()),
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
                                        SizeConfig().p11medB('Entertaint', 11),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                      const Home()),
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
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
