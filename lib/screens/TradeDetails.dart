import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/TradePoints.dart';
import 'package:proquota/screens/TradePoints2.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/statistics.dart';
import '../classes/mediaQuery.dart';

class TradeDetails extends StatefulWidget {
  const TradeDetails({super.key});

  @override
  State<TradeDetails> createState() => _TradeDetailsState();
}

class _TradeDetailsState extends State<TradeDetails> {
  // set bottom tab screen //
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                                  return const TradePoint2();
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
                          width: 50,
                        ),
                        SizeConfig().p18medB('Trade Details', 18),
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
                                builder: (context) => const TradePoint()),
                          );
                        },
                        child: SizedBox(
                          height: 205,
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
                                              SizeConfig().p12medW(
                                                  'Voucher Points', 12),
                                              Image.asset(
                                                'assets/pont.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 60,
                                          ),
                                          SizeConfig()
                                              .h2txtW('#STAYUPLATE', 24),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p12medW('100GB + 1.4MB', 12),
                                              SizeConfig()
                                                  .p12medW('+30 Days', 12),
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

                      SizedBox(
                        width: 375,
                        child: SizeConfig().p16medB('#STAYUPLATE POINTS', 16),
                      ),

                      const SizedBox(
                        height: 30,
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
                              text: 'Overview',
                            ),
                            Tab(
                              text: 'How to Use',
                            ),
                            Tab(
                              text: 'Terms',
                            ),
                          ]),

                      const SizedBox(
                        height: 24,
                      ),

                      // Overview //
                      SizedBox(
                        width: 375,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizeConfig().p14reg(
                                'Enjoy an exciting internet experience on all networks with a 2 GB Internet quota for 1 day (valid from 01:00 to 12:00).',
                                14),
                            SizeConfig().spaceH(2),
                            SizeConfig().p14reg(
                                '1 (one) number can only be exchanged 1 (one) time for 30 days.',
                                14),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // bottom points //

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: style.white,
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 24,
                  bottom: 36,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizeConfig().p14reg('Points', 14),
                        const SizedBox(
                          height: 8,
                        ),
                        SizeConfig().p18medC('1000', 14),
                      ],
                    ),
                    // button //
                    SizedBox(
                      width: 160,
                      height: 50,
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
                                  builder: (context) => const TradePoint()),
                            );
                          },
                          child: SizeConfig().p14medW('Trade Points', 14)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
