import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

const List<String> _designationList = [
  'Product Designer',
  'Flutter Developer',
  'QA Tester',
  'Product Owner',
];

class DesignationMenu extends StatelessWidget {
  const DesignationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).canvasColor,
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                child: Text(
                  _designationList[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: AppColor.lightGrey,
              thickness: 0.1,
            );
          },
          itemCount: _designationList.length,
        ),
      ),
    );
  }
}
