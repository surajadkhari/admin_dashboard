import 'package:flutter/material.dart';

import 'dashboard_center_body/dashboard_body.dart';
import 'sidebar_menu.dart/side_bar_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SideBarMenu(),
          ),
          Expanded(flex: 5, child: DashboardBody())
        ],
      )),
    );
  }
}
