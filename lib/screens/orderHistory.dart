import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/detail.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/search.dart';
import 'package:proquota/screens/statistics.dart';
import '../classes/mediaQuery.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistory();
}

class _OrderHistory extends State<OrderHistory> {
  // set bottom tab screen //
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                                  return Profile();
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
                          width: 60,
                        ),
                        SizeConfig().p18medB('Order History', 18),
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
                            SizeConfig().p14regM('Search Transaction', 14),
                            const SizedBox(
                              width: 90,
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
                      height: 8,
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
                      height: 16,
                    ),

                    // card details 01 //
                    SizedBox(
                      width: 327,
                      height: 150,
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
                                left: 14, right: 14, top: 12, bottom: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig().p16medB('Happy With 10GB', 16),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(style
                                                    .success
                                                    .withOpacity(0.1)),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                              ),
                                            ),
                                          ),
                                          onPressed: () async {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Detail()),
                                            );
                                          },
                                          child: const Text(
                                            'Success',
                                            style: TextStyle(
                                                color: style.success,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizeConfig().p12reg(
                                    '1GB Streaming Game + 9GB Internal Quota, Exp in ',
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
                                SizeConfig().p14medC('Rp. 49,500', 14),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    // card details 02 //
                    SizedBox(
                      width: 327,
                      height: 150,
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
                                left: 14, right: 14, top: 12, bottom: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig()
                                        .p16medB('Stay Up Late Night', 16),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(style
                                                    .success
                                                    .withOpacity(0.1)),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                              ),
                                            ),
                                          ),
                                          onPressed: () async {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Home()),
                                            );
                                          },
                                          child: const Text(
                                            'Success',
                                            style: TextStyle(
                                                color: style.success,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizeConfig().p12reg(
                                    '2GB Streaming Video + 9GB Internet Quota, Exp in',
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
                                SizeConfig().p14medC('Rp. 100,500', 14),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    // card details 02 //
                    SizedBox(
                      width: 327,
                      height: 150,
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
                                left: 14, right: 14, top: 12, bottom: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig().p16medB('Always Roaming', 16),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(style
                                                    .success
                                                    .withOpacity(0.1)),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                              ),
                                            ),
                                          ),
                                          onPressed: () async {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Home()),
                                            );
                                          },
                                          child: const Text(
                                            'Success',
                                            style: TextStyle(
                                                color: style.success,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizeConfig().p12reg(
                                    'Full 14GB nonstop for your daily activities. Exp in ',
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
                                SizeConfig().p14medC('Rp. 6,000', 14),
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
