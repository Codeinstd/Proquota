import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/chooseSignUp.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/paymentMethod.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // app bar section//

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
                        width: 100,
                      ),
                      SizeConfig().p18medB('Detail', 18),
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
            padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // info //
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Card(
                      elevation: 0,
                      color: style.warning.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/warning icon.png',
                              height: 24,
                            ),
                            SizedBox(
                              width: 230,
                              child: SizeConfig().p14reg(
                                  'You dont have enough balance please top up first',
                                  12),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: style.warning,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // info //

                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 0),

                          // Row 1 //
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p14reg('Credits Voucher', 14),
                              SizeConfig().p14medB('Rp.100,000', 14)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 24),

                          // Row 2 //
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p14reg('Fee Transaction', 14),
                              SizeConfig().p14medB('Rp.10,000', 14)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // total payment //

                  const SizedBox(
                    height: 24,
                  ),

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
                        color: style.bgneutral2.withOpacity(0.9),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 24,
                            right: 24,
                            bottom: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizeConfig().p14reg('Total Payment', 14),
                              SizeConfig().p14medB('Rp.110,000', 14)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 240,
                  ),

                  // terms & condition //
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 0),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/success icon.png',
                              height: 24,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizeConfig().p14reg(
                                    'all transactions are fast and safe, continuing',
                                    12),
                                Row(
                                  children: [
                                    SizeConfig()
                                        .p14reg('this you agree to the', 12),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      'terms and condition',
                                      style: TextStyle(color: style.success),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 375,
                    height: 56,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24),
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
                                  builder: (context) => const PaymentMethod()),
                            );
                          },
                          child: SizeConfig().p14medW('Pay Now', 14)),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
