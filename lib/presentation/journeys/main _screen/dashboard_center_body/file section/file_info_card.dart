import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:f_dashboard/data/model/files_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'linear_progress.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({Key? key, required this.info}) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppbarConst.secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(16 * 0.75),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: info.color!.withOpacity(0.1),
                  ),
                  child: SvgPicture.asset(
                    info.svgSrc!,
                    color: info.color,
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white54,
                )
              ],
            ),
            Text(
              info.title.toString(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            ProgressLinear(
              percentage: info.percentage!,
              colour: info.color!,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${info.numOfFiles} Files',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
                ),
                Text(
                  '${info.totalStorage} ',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white),
                )
              ],
            )
          ]),
    );
  }
}
