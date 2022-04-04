import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:f_dashboard/data/model/recent_files.dart';
import 'package:f_dashboard/presentation/journeys/main%20_screen/dashboard_center_body/file%20section/file_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dashboard_body_header.dart';
import 'storage/storage.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const FileSection(),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppbarConst.secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recent Files",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              SizedBox(
                                  width: double.infinity,
                                  child: DataTable(
                                    columnSpacing: 16,
                                    horizontalMargin: 0,
                                    columns: const [
                                      DataColumn(
                                        label: Text('File Name'),
                                      ),
                                      DataColumn(
                                        label: Text('Date'),
                                      ),
                                      DataColumn(
                                        label: Text('Size'),
                                      ),
                                    ],
                                    rows: List.generate(
                                        demoRecentFiles.length,
                                        (index) => recentFilesRow(
                                            demoRecentFiles[index])),
                                  ))
                            ],
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                  flex: 2,
                  child: StorageSection(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  DataRow recentFilesRow(RecentFile fileinfo) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileinfo.icon.toString(),
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(fileinfo.title.toString()),
            ),
          ],
        ),
      ),
      DataCell(Text(fileinfo.date.toString())),
      DataCell(Text(fileinfo.size.toString().toUpperCase())),
    ]);
  }
}
