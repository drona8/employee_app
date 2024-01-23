import 'package:employee_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ScrollList<T> extends StatefulWidget {
  final VoidCallback? onRefresh;
  final bool isLoading;
  final List<T> items;
  final Widget noRecordFoundWidget;
  final Widget header;
  final ScrollController controller;
  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  const ScrollList({
    Key? key,
    required this.isLoading,
    required this.itemBuilder,
    required this.items,
    required this.noRecordFoundWidget,
    required this.controller,
    this.header = const SizedBox.shrink(),
    this.onRefresh,
  }) : super(key: key);

  @override
  State<ScrollList<T>> createState() => _ScrollListState<T>();
}

class _ScrollListState<T> extends State<ScrollList<T>> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = widget.controller;
    super.initState();
  }

  @override
  void dispose() {
    if (_controller.hasClients) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLoading && widget.items.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : RefreshIndicator(
            color: Theme.of(context).primaryColor,
            onRefresh: () async => widget.onRefresh?.call(),
            child: widget.items.isEmpty && !widget.isLoading
                ? Center(
                    child: widget.noRecordFoundWidget,
                  )
                : ListView.separated(
                    controller: _controller,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = widget.items[index];

                      return widget.itemBuilder(context, index, item);
                    },
                    itemCount: widget.items.length,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: AppColor.lightGrey,
                        thickness: 0.1,
                      );
                    },
                  ),
          );
  }
}
