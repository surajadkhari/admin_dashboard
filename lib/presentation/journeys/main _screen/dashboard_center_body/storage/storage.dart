import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';
import '../chart.dart';
import 'storage_card.dart';

class StorageSection extends StatelessWidget {
  const StorageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppbarConst.secondaryColor),
      child: Column(
        children: [
          const Text(
            "Storage Detail",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Chart(),
          const SizedBox(
            height: 16,
          ),
          const StorerageCard(
            cardImage: 'assets/icons/Documents.svg',
            title: 'Document Files',
            subtitle: '1329 Files',
            traingingtitle: '1.5GB',
          ),
          const StorerageCard(
            cardImage: 'assets/icons/media.svg',
            title: 'Media Files',
            subtitle: '1328',
            traingingtitle: '15GB',
          ),
          const StorerageCard(
            cardImage: 'assets/icons/folder.svg',
            title: 'Other Files',
            subtitle: '1328',
            traingingtitle: '1.3GB',
          ),
          const StorerageCard(
            cardImage: 'assets/icons/unknown.svg',
            title: 'Unknown ',
            subtitle: '1328',
            traingingtitle: '1.5GB',
          )
        ],
      ),
    );
  }
}
