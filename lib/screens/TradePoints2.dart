import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/TradeDetails.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/points.dart';
import '../classes/mediaQuery.dart';

class TradePoint2 extends StatefulWidget {
  const TradePoint2({super.key});

  @override
  State<TradePoint2> createState() => _TradePointState2();
}

class _TradePointState2 extends State<TradePoint2> {
  double _onChange = 20.0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      // appbar //
      child: Scaffold(
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
                                  return const Points();
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
                        SizeConfig().p18medB('Trade Points', 18),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizeConfig().p14regM('Search ', 14),
                          const SizedBox(
                            width: 165,
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

                    const SizedBox(
                      height: 24,
                    ),

                    // slider //
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTickMarkColor: style.primary,
                        showValueIndicator: ShowValueIndicator.always,
                        inactiveTrackColor: style.primary.withOpacity(0.2),
                        trackShape: const RectangularSliderTrackShape(),
                        trackHeight: 6.0,
                        thumbColor: style.white,
                        valueIndicatorColor: style.textPrimary,
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 12.0),
                        overlayColor: style.primary,
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 16,
                        ),
                        overlappingShapeStrokeColor: style.bgneutral2,
                      ),
                      child: Container(
                          width: 375,
                          child: Slider(
                            min: 0.0,
                            max: 100.0,
                            label:
                                "10.040 Points: ${_onChange.round().toString()}",
                            onChanged: (double value) {
                              setState(() {
                                _onChange = value;
                              });
                            },
                            value: _onChange,
                          )),
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
                            text: 'Internet Quota',
                          ),
                          Tab(
                            text: 'Credits',
                          ),
                        ]),

                    const SizedBox(
                      height: 24,
                    ),

                    // card details //
                    Column(
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
                                    builder: (context) => const TradeDetails()),
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
                                    SizeConfig().p16medB('Happy With 10GB', 16),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig().p14medC('1040 Points', 14),
                                        SizeConfig().p11regR('Terms', 16),
                                      ],
                                    ),
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
                                    builder: (context) => const TradeDetails()),
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
                                    SizeConfig()
                                        .p16medB('Stay Up Late Night', 16),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizeConfig().p12reg(
                                        '2GB Streaming Game + 9Gb Intenet Quota, Exp in',
                                        12),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    SizeConfig().p12reg('2 month', 12),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig().p14medC('1000 Points', 14),
                                        SizeConfig().p11regR('Terms', 16),
                                      ],
                                    ),
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
                                    builder: (context) => const TradeDetails()),
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
                                    SizeConfig().p16medB('Always Roaming', 16),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig().p14medC('1200 Points', 14),
                                        SizeConfig().p11regR('Terms', 16),
                                      ],
                                    ),
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
              ),
            ))
          ],
        ),
      ),
    );
  }
}
