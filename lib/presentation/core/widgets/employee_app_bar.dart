import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmployeeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EmployeeAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
