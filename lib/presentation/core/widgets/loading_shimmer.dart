import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum LoadingShimmerType {
  withChild,
}

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({
    Key? key,
    required this.child,
    required this.enabled,
  }) : super(key: key);

  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return _WithChild(
      enabled: enabled,
      child: child,
    );
  }
}

class _WithChild extends StatelessWidget {
  const _WithChild({
    Key? key,
    required this.child,
    required this.enabled,
  }) : super(key: key);
  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return Center(child: child);

    return Center(
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.secondary,
        highlightColor: Theme.of(context).canvasColor,
        enabled: true,
        child: child,
      ),
    );
  }
}
