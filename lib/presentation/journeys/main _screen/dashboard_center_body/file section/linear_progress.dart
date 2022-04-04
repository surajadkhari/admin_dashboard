import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';

class ProgressLinear extends StatelessWidget {
  const ProgressLinear({
    Key? key,
    this.colour = AppbarConst.primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color colour;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour.withOpacity(0.1),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colour,
            ),
          );
        }),
      ],
    );
  }
}
