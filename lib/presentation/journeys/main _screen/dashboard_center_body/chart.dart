import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
   Chart({
    Key? key,
   
  }) : super(key: key);


  List<PieChartSectionData> pieChartSectionDatas = [
    PieChartSectionData(
      color: AppbarConst.primaryColor,
      radius: 25,
      value: 25,
      showTitle: false,
    ),
    PieChartSectionData(
      color: const Color(0xff26E5FF),
      value: 20,
      radius: 25,
      showTitle: false,
    ),
    PieChartSectionData(
      color: const Color(0xffffcf26),
      radius: 25,
      value: 10,
      showTitle: false,
    ),
    PieChartSectionData(
      color: const Color(0xffee2727),
      radius: 25,
      value: 15,
      showTitle: false,
    ),
    PieChartSectionData(
      color: AppbarConst.primaryColor.withOpacity(0.1),
      radius: 25,
      value: 10,
      showTitle: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(sections: pieChartSectionDatas, centerSpaceRadius: 70),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "21.1",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Text("of 128 GB")
            ],
          ))
        ],
      ),
    );
  }
}
