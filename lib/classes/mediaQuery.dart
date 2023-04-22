// ignore: file_names
import 'package:flutter/material.dart';
import '../classes/style.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

  Widget spaceW(line) {
    return const SizedBox(width: 10);
  }

  Widget spaceH(line) {
    return const SizedBox(height: 16);
  }

  h1txtW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w900,
        fontSize: 36,
        fontFamily: 'outfit',
      ),
    );
  }

  h1txtB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.black,
        fontWeight: FontWeight.w900,
        fontSize: 36,
        fontFamily: 'outfit',
      ),
    );
  }

  h1txtP(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w900,
        fontSize: 36,
        fontFamily: 'outfit',
      ),
    );
  }

  h2txtW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w800,
        fontSize: 28,
        fontFamily: 'outfit',
      ),
    );
  }

  h2txtB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.black,
        fontWeight: FontWeight.w800,
        fontSize: 28,
        fontFamily: 'outfit',
      ),
    );
  }

  h2txtP(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w800,
        fontSize: 28,
        fontFamily: 'outfit',
      ),
    );
  }

  h3txtP(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        fontFamily: 'outfit',
      ),
    );
  }

  h3txtW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        fontFamily: 'outfit',
      ),
    );
  }

  h3txtB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.black,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        fontFamily: 'outfit',
      ),
    );
  }

  h4txtP(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: 'outfit',
      ),
    );
  }

  h4txtW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: 'outfit',
      ),
    );
  }

  h4txtB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.black,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: 'outfit',
      ),
    );
  }

  p11reg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w300,
        fontSize: 11,
      ),
    );
  }

  p11medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textPrimary,
        fontWeight: FontWeight.w500,
        fontSize: 11,
      ),
    );
  }

  p11medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w500,
        fontSize: 11,
      ),
    );
  }

  p11medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 11,
      ),
    );
  }

  p12reg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      ),
    );
  }

  p12regM(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }

  p12regR(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.failed,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }

  p11regR(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.failed,
        fontWeight: FontWeight.w400,
        fontSize: 11,
      ),
    );
  }

  p12medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textPrimary,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }

  p12medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }

  p12medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }

  p14reg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      ),
    );
  }

  p14regM(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }

  p14medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textPrimary,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }

  p14medRg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.failed,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }

  p14medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }

  p14medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }

  p16reg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
    );
  }

  p16medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  p16medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  p16medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  p18reg(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.textSecond,
        fontWeight: FontWeight.w300,
        fontSize: 18,
      ),
    );
  }

  p18medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }

  p18medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.black,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    );
  }

  p18medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/Illustration 01.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        const SizedBox(height: 64),
        Container(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizeConfig().h3txtB('Easy to buy data plan & credits', 24),
              SizeConfig().spaceH(2),
              SizeConfig().p12reg(
                  'Easy experience to buy data and get a lot of discount', 12),
            ],
          ),
        ),
      ],
    );
