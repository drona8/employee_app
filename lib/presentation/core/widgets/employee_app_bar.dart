import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_assets.dart';
import 'loading_shimmer.dart';
import 'svg_image_widget.dart';

class EmployeeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EmployeeAppBar(
      {super.key,
      required this.title,
      required this.isEdit,
      required this.onDelete,
      this.shimmerDeleteIcon = false});
  final String title;
  final bool isEdit;
  final VoidCallback? onDelete;
  final bool shimmerDeleteIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColorDark,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      automaticallyImplyLeading: false,
      actions: isEdit
          ? [
              LoadingShimmer(
                enabled: shimmerDeleteIcon,
                child: Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: onDelete,
                    child: const SvgImageWidget(
                      svgImage: AppAssets.deleteIcon,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
