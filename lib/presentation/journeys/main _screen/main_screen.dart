import 'package:f_dashboard/core/utilis/responsive.dart';
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
          if (Responsive.isDesktop(context))
            const Expanded(
              child: SideBarMenu(),
            ),
          const Expanded(flex: 5, child: DashboardBody())
        ],
      )),
    );
  }
}
