import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/chooseSignUp.dart';
import 'package:proquota/screens/forgotPwd.dart';
import 'package:proquota/screens/home.dart';
import 'package:proquota/screens/splash.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // app bar section//
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
                                  return const chooseSignUp();
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
                padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: TabBar(
                          indicator: BoxDecoration(
                              color: style.white,
                              borderRadius: BorderRadius.circular(24.0)),
                          labelColor: style.textPrimary,
                          unselectedLabelColor: style.textSecond,
                          tabs: const [
                            Tab(
                              text: 'Login',
                            ),
                            Tab(
                              text: 'Register',
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),

                      // Header//
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizeConfig().h4txtB('Hey! Welcome Back', 24),
                            SizeConfig().spaceW(2),
                            Image.asset(
                              'assets/wave.png',
                              height: 24,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      // Email //
                      Container(
                        height: 56,
                        width: 327,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        // margin: const EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Image.asset(
                                'assets/mail icon.png',
                                height: 24,
                                color: style.textSecond,
                              ),
                            ),
                            const Expanded(
                              child: TextField(
                                cursorColor: style.primary,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Input Email",
                                  hintStyle: TextStyle(color: style.textSecond),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                ),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: style.textPrimary,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),

                      // Password//
                      Container(
                        height: 56,
                        width: 327,
                        decoration: BoxDecoration(
                          color: style.bgneutral2,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        // margin: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                              ),
                              child: Image.asset(
                                'assets/key icon.png',
                                height: 24,
                                color: style.textSecond,
                              ),
                            ),
                            const Expanded(
                              child: TextField(
                                cursorColor: style.primary,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Input Password",
                                  hintStyle: TextStyle(color: style.textSecond),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                ),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: style.textPrimary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: Image.asset(
                                'assets/eye icon.png',
                                height: 24,
                                color: style.textSecond,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 24,
                      ),

                      // Remember //
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.check_box_outline_blank_rounded),
                                  color: style.textSecond,
                                ),
                                SizeConfig().p14reg('Remember', 14),
                              ],
                            ),
                            TextButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                  ),
                                ),
                                onPressed: () async {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPwd()),
                                  );
                                },
                                child: SizeConfig()
                                    .p14medC('forgot Password?', 12)),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 50,
                      ),

                      // login btn//

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
                                    builder: (context) => const Home()),
                              );
                            },
                            child: SizeConfig().p14medW('Login', 14)),
                      ),

                      const SizedBox(
                        height: 24,
                      ),

                      // google btn //

                      SizedBox(
                        width: 375,
                        height: 56,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(style.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Splash()),
                            );
                          },
                          // button color
                          child: InkWell(
                            onTap: () {}, // button pressed
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/google icon.png',
                                  height: 24,
                                ),
                                SizeConfig().spaceW(2),
                                SizeConfig()
                                    .p14medB('Login with Google', 14), // icon
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
