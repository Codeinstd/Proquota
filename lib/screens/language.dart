import 'package:flutter/material.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/login.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/setting.dart';
import '../classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _Language();
}

class _Language extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar section //
      // appbar//
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
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Setting();
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
                      SizeConfig().p18medB('Select Language', 18),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Profile();
                              },
                            ),
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

      // body section //
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        onTap: () {},
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
                            SizeConfig().p14regM('Search Language', 14),
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
                      height: 36,
                    ),

                    // language list //

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // England //
                        SizedBox(
                          width: 327,
                          height: 58,
                          child: Card(
                              color: style.bgneutral2,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/England.png',
                                    ),
                                    SizeConfig().spaceW(2),
                                    SizeConfig().p16medB('England', 16),
                                    const SizedBox(
                                      width: 170,
                                    ),
                                    Image.asset('assets/checkbox.png')
                                  ],
                                ),
                              )),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        // Indonesia //
                        SizedBox(
                          width: 327,
                          height: 58,
                          child: Card(
                              color: style.bgneutral2,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/Indonesia.png',
                                    ),
                                    SizeConfig().spaceW(2),
                                    SizeConfig().p16medB('Indonesia', 16),
                                    const SizedBox(
                                      width: 160,
                                    ),
                                    Image.asset('assets/Checkbox_2.png')
                                  ],
                                ),
                              )),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        // Germany //
                        SizedBox(
                          width: 327,
                          height: 58,
                          child: Card(
                              color: style.bgneutral2,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/Germany.png',
                                    ),
                                    SizeConfig().spaceW(2),
                                    SizeConfig().p16medB('Deutsch', 16),
                                    const SizedBox(
                                      width: 160,
                                    ),
                                    Image.asset('assets/Checkbox_2.png')
                                  ],
                                ),
                              )),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        // Germany //
                        SizedBox(
                          width: 327,
                          height: 58,
                          child: Card(
                              color: style.bgneutral2,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/France.png',
                                    ),
                                    SizeConfig().spaceW(2),
                                    SizeConfig().p16medB('France', 16),
                                    const SizedBox(
                                      width: 160,
                                    ),
                                    Image.asset('assets/Checkbox_2.png')
                                  ],
                                ),
                              )),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        // Germany //
                        SizedBox(
                          width: 327,
                          height: 58,
                          child: Card(
                              color: style.bgneutral2,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/Spain.png',
                                    ),
                                    SizeConfig().spaceW(2),
                                    SizeConfig().p16medB('Spanish', 16),
                                    const SizedBox(
                                      width: 160,
                                    ),
                                    Image.asset('assets/Checkbox_2.png')
                                  ],
                                ),
                              )),
                        ),
                      ],
                    )
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
