import 'package:flutter/material.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/detail.dart';
import 'package:proquota/screens/detailtransact.dart';
import 'package:proquota/screens/home.dart';
import '../classes/mediaQuery.dart';

class FailedOrder extends StatefulWidget {
  const FailedOrder({super.key});

  @override
  State<FailedOrder> createState() => _FailedOrderState();
}

class _FailedOrderState extends State<FailedOrder> {
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Detail();
                              },
                            ),
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

      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizeConfig().h4txtB('Failed bought credits', 20),
                const SizedBox(
                  height: 10,
                ),
                SizeConfig().p14reg(
                    'Sorry, there are any issues here, please repeat your order',
                    12),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30, top: 60),
                  child: Image.asset(
                    'assets/Register failed.png',
                    height: 230,
                  ),
                ),
                const SizedBox(
                  height: 140,
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
                              builder: (context) => const DetailTransact()),
                        );
                      },
                      child:
                          SizeConfig().p14medW('See Detail Transaction', 14)),
                ),

                const SizedBox(
                  height: 16,
                ),

                // button 2 //
                SizedBox(
                  width: 375,
                  height: 56,
                  child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(color: style.outline)),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: SizeConfig().p14medC('Homepage', 14)),
                ),
              ],
            )),
          ),
        ),
      ]),
    );
  }
}
