
import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorerageCard extends StatelessWidget {
  const StorerageCard(
      {Key? key,
      required this.cardImage,
      required this.title,
      required this.subtitle,
      required this.traingingtitle})
      : super(key: key);
  final String cardImage;
  final String title;
  final String subtitle;
  final String traingingtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
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
            child: SvgPicture.asset(cardImage),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '$subtitle Files',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
                )
              ],
            ),
          )),
          Text(traingingtitle)
        ],
      ),
    );
  }
}
