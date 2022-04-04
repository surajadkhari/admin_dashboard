import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.destop,
      required this.mobile,
      required this.tablet})
      : super(key: key);

  final Widget mobile;
  final Widget tablet;
  final Widget destop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return destop;
    } else if (isTablet(context) && tablet != null) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
