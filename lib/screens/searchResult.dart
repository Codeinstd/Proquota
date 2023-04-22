import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/search.dart';
import 'package:proquota/screens/shop.dart';
import '../classes/mediaQuery.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizeConfig().p14regM('10GB', 14),
                          const SizedBox(
                            width: 180,
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

                  // Related result //
                  SizedBox(
                    width: 375,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizeConfig().p12regM('Related Result', 12),

                        // Happy with 10GB //
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/search icon 02.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizeConfig().p16medB('Happy With 10GB', 16),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12reg(
                                      '1GB Streaming game + 9GB Internet Quota...',
                                      16),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 12,
                        ),

                        // Happy with 10GB //
                        Container(
                          padding: EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/search icon 02.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizeConfig().p16medB('10GB Always Roam', 16),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12reg(
                                      'Full 10GB nonstop for your daily activities...',
                                      16),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 12,
                        ),

                        // Happy with 10GB //
                        Container(
                          padding: EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/search icon 02.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizeConfig().p16medB('10GB GG Gaming', 16),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12reg(
                                      '1GB Streaming Game +9GB Internet Game...',
                                      16),
                                ],
                              ),
                            ],
                          ),
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
