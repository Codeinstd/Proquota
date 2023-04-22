import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/PIN.dart';
import 'package:proquota/screens/detail.dart';

import '../classes/mediaQuery.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethod();
}

class _PaymentMethod extends State<PaymentMethod> {
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
                                return const Detail();
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
                      SizeConfig().p18medB('Payment Method', 18),
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
                  // section wallet  details //

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/Wallet icon.png',
                        height: 40,
                      ),
                      SizeConfig().spaceW(2),
                      SizeConfig().p16medB('Your Wallet', 16)
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizeConfig()
                      .p14reg('Quick and easy payment, with wallet', 12),

                  const SizedBox(
                    height: 24,
                  ),

                  //  wallet container //

                  SizedBox(
                    width: 327,
                    height: 58,
                    child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                            side: BorderSide(color: style.primary)),
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
                                'assets/Wallet icon.png',
                              ),
                              SizeConfig().p16medC('Wallet', 16),
                              const SizedBox(
                                width: 170,
                              ),
                              Image.asset('assets/tick-circle.png')
                            ],
                          ),
                        )),
                  ),

                  // info //
                  SizedBox(
                    width: 327,
                    height: 42,
                    child: Card(
                      elevation: 0,
                      color: style.warning.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 230,
                              child: SizeConfig().p14reg('Top up first', 12),
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
                    height: 40,
                  ),

                  // section wallet  details //

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/Wallet icon.png',
                        height: 40,
                      ),
                      SizeConfig().spaceW(2),
                      SizeConfig().p16medB('Virtual Account', 16)
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizeConfig().p12reg(
                      'Quick and easy payment, with Virtual Account', 12),

                  const SizedBox(
                    height: 24,
                  ),

                  //  BCA container //

                  SizedBox(
                    width: 327,
                    height: 58,
                    child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                            side: BorderSide(color: style.outline)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/bca.png',
                              ),
                              SizeConfig().spaceW(2),
                              SizeConfig().p16medB('BCA', 16),
                            ],
                          ),
                        )),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  //  BCA container //

                  SizedBox(
                    width: 327,
                    height: 58,
                    child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                            side: BorderSide(color: style.outline)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/bni.png',
                              ),
                              SizeConfig().spaceW(2),
                              SizeConfig().p16medB('BNI', 16),
                            ],
                          ),
                        )),
                  ),

                  const SizedBox(
                    height: 120,
                  ),

                  // button //
                  SizedBox(
                    width: 375,
                    height: 56,
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
                                builder: (context) => const PinScreen()),
                          );
                        },
                        child: SizeConfig().p14medW('Pay Now', 14)),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
