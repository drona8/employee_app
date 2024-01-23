import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageWidget extends StatelessWidget {
  const SvgImageWidget({
    super.key,
    required this.svgImage,
    required this.height,
    required this.width,
  });
  final String svgImage;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgImage,
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
