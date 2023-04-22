import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/chooseSignUp.dart';
import 'package:proquota/screens/onboarding2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  //Declaring Controller
  final controller = PageController();
  bool isLastPage = false;

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
                onPageChanged: (index) {
                  setState(() => isLastPage = index == 2);
                },
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/Illustration 01.png'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizeConfig().h3txtB('Easy to buy data plan & credits', 24),
                    SizeConfig().spaceH(2),
                    SizeConfig().p12reg(
                        'Easy experience to buy data and get a lot of discount',
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
                        onDotClicked: (onboard1) => {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Onboard2()),
                          )
                        },
                      ),
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
                            // navigate directly to home page
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('showHome', true);
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Onboard2()),
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
