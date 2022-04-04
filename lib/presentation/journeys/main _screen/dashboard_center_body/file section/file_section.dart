import 'package:f_dashboard/core/utilis/responsive.dart';
import 'package:f_dashboard/data/model/files_model.dart';
import 'package:flutter/material.dart';
import 'file_info_card.dart';

class FileSection extends StatelessWidget {
  const FileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("My Files"),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
              icon: const Icon(Icons.add),
              label: const Text("Add new"),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Responsive(
            destop: FileInfoGridViewSection(),
            mobile: FileInfoGridViewSection(),
            tablet: FileInfoGridViewSection())
      ],
    );
  }
}

class FileInfoGridViewSection extends StatelessWidget {
  const FileInfoGridViewSection({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          childAspectRatio: childAspectRatio),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
      itemCount: 4,
    );
  }
}
