import 'package:flutter/material.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/language.dart';
import 'package:proquota/screens/login.dart';
import 'package:proquota/screens/profile.dart';
import 'package:proquota/screens/switch.dart';
import '../classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                          'assets/cirbkbtn.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      SizeConfig().p18medB('Settings', 18),
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                            width: 85,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const switchScreen()),
                                                );
                                              },
                                              child: SizeConfig()
                                                  .p14medW('Switch', 14)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    // account setting //

                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizeConfig().p16medB('Account Settings', 16),
                          const SizedBox(
                            height: 20,
                          ),

                          // Edit Profile //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/user...png',
                                            height: 40,
                                          ),
                                          SizeConfig().spaceW(2),
                                          SizeConfig()
                                              .p14medB('Edit Profile', 14),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 180,
                                      ),
                                      Image.asset(
                                        'assets/arrow-down.png',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 16,
                          ),

                          // Change Password //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/pwd.png',
                                            height: 40,
                                          ),
                                          SizeConfig().spaceW(2),
                                          SizeConfig()
                                              .p14medB('Change Password', 14),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 132,
                                      ),
                                      Image.asset(
                                        'assets/arrow-down.png',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),

                    // other //

                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizeConfig().p16medB('Other', 16),
                          const SizedBox(
                            height: 20,
                          ),

                          // Edit Profile //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Language()),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/lang.png',
                                            height: 40,
                                          ),
                                          SizeConfig().spaceW(2),
                                          SizeConfig().p14medB('Language', 14),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 180,
                                      ),
                                      Image.asset(
                                        'assets/arrow-down.png',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 16,
                          ),

                          // Change Password //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/faq.png',
                                            height: 40,
                                          ),
                                          SizeConfig().spaceW(2),
                                          SizeConfig().p14medB('FAQ', 14),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 218,
                                      ),
                                      Image.asset(
                                        'assets/arrow-down.png',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              padding: const EdgeInsets.only(
                left: 24,
                top: 24,
                bottom: 36,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // button //
                  SizedBox(
                    width: 327,
                    height: 56,
                    child: TextButton(
                        style: ButtonStyle(
                          // backgroundColor:
                          //     MaterialStateProperty.all(style.primary),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(color: style.outline),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: SizeConfig().p14medRg('Logout', 14)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
