import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'chart.dart';
import 'dashboard_body_header.dart';

class DashboardBody extends StatelessWidget {
  DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SideBarHeader(),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      height: 500,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppbarConst.secondaryColor),
                    child: Column(
                      children: [
                        const Text(
                          "Storage Detail",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Chart(),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppbarConst.primaryColor.withOpacity(0.15),
                              width: 2,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                    "assets/icons/Documents.svg"),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:const [
                                     Text("Document Files"),
                                     Text('1329 Files')
                                  ],
                                ),
                              )),
                              const Text("1.3 Gb")
                            ],
                          ),
                        )
                        // ListTile(
                        //   leading: Icon(Icons.menu),
                        //   title: Text("Document Files"),
                        //   subtitle: Text("1328 FIles"),
                        //   trailing: Text("1.5GB"),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
