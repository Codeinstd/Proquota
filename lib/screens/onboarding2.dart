import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/chooseSignUp.dart';
import 'package:proquota/screens/onboarding1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard2 extends StatefulWidget {
  const Onboard2({Key? key}) : super(key: key);

  @override
  State<Onboard2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
  //Declaring Controller
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                pageSnapping: true,
                controller: controller,
                children: [
                  Image.asset('assets/Illustration 02.png'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizeConfig().h3txtB('Easy to control your data usage', 24),
                    SizeConfig().spaceH(2),
                    SizeConfig().p12reg(
                        'Easy to always control how much data you use every day',
                        12),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: SmoothPageIndicator(
                          controller: controller,
                          count: 2,
                          effect: ExpandingDotsEffect(
                            activeDotColor: style.primary,
                            dotColor: style.primary.withOpacity(0.2),
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                          onDotClicked: (onboard) => {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Onboard1()),
                                ),
                              }),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
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
                                  builder: (context) => const chooseSignUp()),
                            );
                          },
                          child: SizeConfig().p14medW('Next', 14)),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: 375,
                      height: 56,
                      child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const chooseSignUp()),
                            );
                          },
                          child: SizeConfig().p14medC('Skip', 14)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
