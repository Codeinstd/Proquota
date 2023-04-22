import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/purchaseCredit.dart';
import '../classes/mediaQuery.dart';

class DetailTransact extends StatefulWidget {
  const DetailTransact({super.key});

  @override
  State<DetailTransact> createState() => _MyDetailTransactState();
}

class _MyDetailTransactState extends State<DetailTransact> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Home();
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
                      SizeConfig().p18medB('Detail Transaction', 18),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/avatar01.png',
                                height: 36,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizeConfig().p16medB('Esmeralda', 14),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12reg('+62123445678912', 12),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                            height: 35,
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      style.success.withOpacity(0.1)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                                onPressed: () async {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => const Home()),
                                  );
                                },
                                child: const Text(
                                  'Success',
                                  style: TextStyle(
                                      color: style.success,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // points info //
                    SizedBox(
                      height: 60,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 0,
                          right: 0,
                        ),
                        child: Card(
                          elevation: 0,
                          color: style.primary.withOpacity(0.1),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/trade points.png',
                                  height: 32,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                SizeConfig().p14medB('You got 100 Points!', 14)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // info transaction //
                    SizedBox(
                      width: 375,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24, right: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizeConfig().p16medB('Detail Transaction', 16),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig().p14reg('Date', 14),
                                    SizeConfig()
                                        .p14reg('27 Dec 2022, 04:04PM', 14),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Divider(
                                  color: style.outline,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),

                                // detail payment //
                                SizeConfig().p16medB('Detail Payment', 16),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig().p14reg('Payment Method', 14),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/Wallet icon.png',
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        SizeConfig().p14reg('Wallet', 12),
                                      ],
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizeConfig().p14reg('Total', 14),
                                    SizeConfig().p14reg('Rp.100,000', 12),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 200,
                    ),

                    // order again btn //

                    SizedBox(
                      width: 375,
                      height: 56,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
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
                                    builder: (context) =>
                                        const PurchaseCredit()),
                              );
                            },
                            child: SizeConfig().p14medW('Order Again', 14)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
