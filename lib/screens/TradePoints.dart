import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/points.dart';
import 'package:proquota/screens/voucher.dart';
import '../classes/mediaQuery.dart';
import 'package:flutter/src/material/slider.dart';

class TradePoint extends StatefulWidget {
  const TradePoint({super.key});

  @override
  State<TradePoint> createState() => _TradePointState();
}

class _TradePointState extends State<TradePoint> {
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
                                          builder: (context) =>
                                              const Voucher()),
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
                                          SizeConfig().p16medB('5,0000', 16),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p12regM('Price', 12),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p14medC('Rp. 4.500', 14),
                                              SizeConfig().p11regR('Terms', 16),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )),

                            // card box 02 //

                            SizedBox(
                                width: 160,
                                height: 102,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Voucher()),
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
                                          SizeConfig().p16medB('10,0000', 16),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          SizeConfig().p12regM('Price', 12),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizeConfig()
                                                  .p14medC('Rp. 9.500', 14),
                                              SizeConfig().p11regR('Terms', 16),
                                            ],
                                          ),
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
                                        builder: (context) => const Voucher()),
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
                                        SizeConfig().p16medB('15,0000', 16),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizeConfig().p12regM('Price', 12),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizeConfig()
                                                .p14medC('Rp. 14.500', 14),
                                            SizeConfig().p11regR('Terms', 11),
                                          ],
                                        ),
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
                                        builder: (context) => const Voucher()),
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
                                        SizeConfig().p16medB('20,0000', 16),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizeConfig().p12regM('Price', 12),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizeConfig()
                                                .p14medC('Rp. 19.500', 14),
                                            SizeConfig().p11regR('Terms', 11),
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
                                        builder: (context) => const Voucher()),
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
                                        SizeConfig().p16medB('25,0000', 16),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizeConfig().p12regM('Price', 12),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizeConfig()
                                                .p14medC('Rp. 24.500', 14),
                                            SizeConfig().p11regR('Terms', 11),
                                          ],
                                        ),
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
                                        builder: (context) => const Voucher()),
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
                                        SizeConfig().p16medB('50,0000', 16),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizeConfig().p12regM('Price', 12),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizeConfig()
                                                .p14medC('Rp. 49.500', 14),
                                            SizeConfig().p11regR('Terms', 11),
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

                        const SizedBox(
                          height: 24,
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
