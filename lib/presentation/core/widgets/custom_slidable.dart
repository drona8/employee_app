import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../theme/app_colors.dart';

class CustomSlidable extends StatelessWidget {
  final Widget child;
  final bool enabled;
  final double borderRadius;
  final double extentRatio;
  final List<CustomSlidableAction> endActionPaneActions;

  const CustomSlidable({
    Key? key,
    required this.child,
    this.enabled = true,
    this.borderRadius = 0,
    this.endActionPaneActions = const <CustomSlidableAction>[],
    this.extentRatio = 0.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!enabled) return Center(child: child);

    return Slidable(
      key: const Key('slidable'),
      endActionPane: endActionPaneActions.isEmpty
          ? null
          : ActionPane(
              extentRatio: extentRatio,
              motion: const ScrollMotion(),
              children: endActionPaneActions
                  .map(
                    (e) => SlidableAction(
                      onPressed: e.onPressed,
                      backgroundColor: e.backgroundColor,
                      foregroundColor: e.foregroundColor,
                      icon: e.icon,
                      //label: e.label,
                      borderRadius: endActionPaneActions.last == e
                          ? BorderRadius.only(
                              topRight: Radius.circular(borderRadius),
                              bottomRight: Radius.circular(borderRadius),
                            )
                          : BorderRadius.zero,
                    ),
                  )
                  .toList(),
            ),
      child: child,
    );
  }
}

class CustomSlidableAction {
  final IconData icon;
  final Function(BuildContext context) onPressed;
  final Color backgroundColor;
  final Color foregroundColor;

  const CustomSlidableAction({
    required this.icon,
    required this.onPressed,
    this.backgroundColor = AppColor.red,
    this.foregroundColor = AppColor.white,
  });
}
