import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class style {
  static const Color white = Color(0xffffffff);
  static const Color bgneutral2 = Color(0xffF0F1F4);
  static const Color bgneutral = Color(0xffEEEEEE);
  static const Color outline = Color(0xffCBCCCD);

  static const Color warning = Color(0xffFFBB0D);
  static const Color success = Color(0xff00D261);
  static const Color failed = Color(0xffE50000);

  static const Color textPrimary = Color(0xff161B1D);
  static const Color textSecond = Color(0xff97999B);

  static const Color primary = Color(0xff3D5BF6);
  static const Color black = Color(0xff1B2124);

  static const double kBorderRadius = 8.0;

  final p12reg = GoogleFonts.outfit(
    color: style.textSecond,
    fontWeight: FontWeight.w300,
    fontSize: 12,
  );

  final p12medB = GoogleFonts.outfit(
    color: style.textPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  final p12medC = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  final p12medW = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  final p14reg = GoogleFonts.outfit(
    color: style.textSecond,
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );

  final p14medB = GoogleFonts.outfit(
    color: style.textPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  final p14medC = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  final p14medW = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  final p16reg = GoogleFonts.outfit(
    color: style.textSecond,
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );

  final p16medB = GoogleFonts.outfit(
    color: style.textPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  final p16medC = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  final p16medW = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  final p18reg = GoogleFonts.outfit(
    color: style.textSecond,
    fontWeight: FontWeight.w300,
    fontSize: 18,
  );

  final p18medB = GoogleFonts.outfit(
    color: style.textPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  final p18medC = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  final p18medW = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  final h1B = GoogleFonts.outfit(
    color: style.black,
    fontWeight: FontWeight.w900,
    fontSize: 36,
  );

  final h1P = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w900,
    fontSize: 36,
  );

  final h1W = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w900,
    fontSize: 36,
  );

  final h2B = GoogleFonts.outfit(
    color: style.black,
    fontWeight: FontWeight.w800,
    fontSize: 28,
  );

  final h2P = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w800,
    fontSize: 28,
  );

  final h2W = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w800,
    fontSize: 28,
  );

  final h3B = GoogleFonts.outfit(
    color: style.black,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  final h3P = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  final h3W = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  final h4B = GoogleFonts.outfit(
    color: style.black,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  final h4P = GoogleFonts.outfit(
    color: style.primary,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  final h4W = GoogleFonts.outfit(
    color: style.white,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  final kBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadius),
    borderSide: BorderSide.none,
  );
}
