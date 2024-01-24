import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../app_assets.dart';
import 'svg_image_widget.dart';

class NoRecordFound extends StatelessWidget {
  const NoRecordFound({
    Key? key,
    this.title = '',
    this.svgImage = AppAssets.noEmployeeIcon,
  }) : super(key: key);
  final String title;
  final String svgImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: SvgImageWidget(
              svgImage: svgImage,
              height: 218,
              width: 261,
            ),
          ),
          if (title.isNotEmpty)
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColor.lightBlack,
                  ),
            ),
        ],
      ),
    );
  }
}
