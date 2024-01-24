import 'package:flutter/material.dart';

class CommonUtil {
  static void handleSnackBar({
    required BuildContext context,
    required String message,
    bool isUndoRequired = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).canvasColor,
              ),
        ),
        action: isUndoRequired
            ? SnackBarAction(
                label: 'Undo',
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  // Some code to undo the change.
                },
              )
            : null,
      ),
    );
  }
}
