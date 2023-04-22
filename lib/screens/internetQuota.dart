import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/detail.dart';
import 'package:proquota/screens/home.dart';

import '../classes/mediaQuery.dart';

class InternetQuota extends StatefulWidget {
  const InternetQuota({super.key});

  @override
  State<InternetQuota> createState() => _InternetQuotaState();
}

class _InternetQuotaState extends State<InternetQuota> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          // appbar //

          appBar: AppBar(
            toolbarHeight: 202,
            title: SizeConfig().p18medB('Purchase Credit', 16),
            centerTitle: true,
            backgroundColor: style.white,
            elevation: 0,
            actions: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, top: 2, right: 24, bottom: 0),
                  child: Column(
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
                                    return const Home();
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
                            width: 54,
                          ),
                          SizeConfig().p18medB('Purchase Credit', 16),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),

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
                                              width: 30,
                                            ),
                                            SizeConfig()
                                                .p18medW('Rp. 100.000', 12)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),

                      // tab bar details //
                      const TabBar(
                          labelColor: style.black,
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
                        height: 16,
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
                        // card box 01//
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
                                    left: 14, right: 14, top: 10, bottom: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig()
                                            .p16medB('Happy With 10GB', 16),
                                        Image.asset(
                                          'assets/receipt icon.png',
                                          height: 24,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizeConfig().p12regM(
                                        '1GB Streaming Game + 9Gb Intenet Quota, Exp in',
                                        12),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    SizeConfig().p12regM('1 month', 12),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizeConfig().p14medC('Rp. 49.500', 14),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        // row 2 //
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
                                    left: 14, right: 14, top: 10, bottom: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig()
                                            .p16medB('Stay Up Late Night', 16),
                                        Image.asset(
                                          'assets/receipt icon.png',
                                          height: 24,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizeConfig().p12regM(
                                        '2GB Streaming Game + 9Gb Intenet Quota, Exp in',
                                        12),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    SizeConfig().p12regM('2 month', 12),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizeConfig().p14medC('Rp.100.500', 14),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        // row 2 //
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
                                    left: 14, right: 14, top: 10, bottom: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig()
                                            .p16medB('Stay Up Late Night', 16),
                                        Image.asset(
                                          'assets/receipt icon.png',
                                          height: 24,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizeConfig().p12regM(
                                        'Full 14Gb nonstop for your daily activities, Exp in',
                                        12),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    SizeConfig().p12regM('1 month', 12),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizeConfig().p14medC('Rp.6,000', 14),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
