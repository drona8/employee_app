import 'package:employee_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ScrollList<T> extends StatefulWidget {
  final VoidCallback? onRefresh;
  final bool isLoading;
  final String group1Header;
  final String group2Header;
  final List<T> itemGroup1;
  final List<T> itemGroup2;
  final Widget noRecordFoundWidget;
  final ScrollController controller;
  final Widget Function(BuildContext context, T item) itemBuilder;
  const ScrollList({
    Key? key,
    required this.isLoading,
    required this.itemBuilder,
    required this.group1Header,
    required this.group2Header,
    required this.itemGroup1,
    required this.itemGroup2,
    required this.noRecordFoundWidget,
    required this.controller,
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
    return widget.isLoading &&
            widget.itemGroup1.isEmpty &&
            widget.itemGroup2.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : RefreshIndicator(
            color: Theme.of(context).primaryColor,
            onRefresh: () async => widget.onRefresh?.call(),
            child: widget.itemGroup1.isEmpty &&
                    widget.itemGroup2.isEmpty &&
                    !widget.isLoading
                ? Center(
                    child: widget.noRecordFoundWidget,
                  )
                : CustomScrollView(
                    controller: _controller,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            if (widget.itemGroup1.isNotEmpty) ...[
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  widget.group1Header,
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: ListTile.divideTiles(
                                  context: context,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.2),
                                  tiles: [
                                    ...widget.itemGroup1
                                        .map((e) =>
                                            widget.itemBuilder(context, e))
                                        .toList()
                                  ],
                                ).toList(),
                              ),
                            ],
                            if (widget.itemGroup2.isNotEmpty) ...[
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  widget.group2Header,
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: ListTile.divideTiles(
                                  context: context,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.2),
                                  tiles: [
                                    ...widget.itemGroup2
                                        .map((e) =>
                                            widget.itemBuilder(context, e))
                                        .toList()
                                  ],
                                ).toList(),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
          );
  }
}
