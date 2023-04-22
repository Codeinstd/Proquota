import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/detail.dart';
import 'package:proquota/screens/home.dart';

import '../classes/mediaQuery.dart';

class PurchaseCredit extends StatefulWidget {
  const PurchaseCredit({super.key});

  @override
  State<PurchaseCredit> createState() => _PurchaseCreditState();
}

class _PurchaseCreditState extends State<PurchaseCredit> {
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
                          indicatorColor: style.primary,
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 12),
                    child: SingleChildScrollView(
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

                              // card box 02 //

                              SizedBox(
                                  width: 160,
                                  height: 102,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Detail()),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                            SizeConfig()
                                                .p14medC('Rp. 9.500', 14),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),

                          const SizedBox(
                            height: 24,
                          ),

                          // row 2 //
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
                                                  .p16medB('15,0000', 16),
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
                                          SizeConfig().p14medC('Rp.14.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // card box 02 //

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
                                                  .p16medB('20,0000', 16),
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
                                          SizeConfig()
                                              .p14medC('Rp. 19.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 24,
                          ),

                          // row 3 //
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
                                                  .p16medB('25,0000', 16),
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
                                          SizeConfig().p14medC('Rp.24.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // card box 02 //

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
                                                  .p16medB('50,0000', 16),
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
                                          SizeConfig()
                                              .p14medC('Rp. 49.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 24,
                          ),

                          // row 4 //
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
                                                  .p16medB('75,0000', 16),
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
                                          SizeConfig().p14medC('Rp.74.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // card box 02 //

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
                                                  .p16medB('100,0000', 16),
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
                                          SizeConfig()
                                              .p14medC('Rp. 99.500', 14),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
