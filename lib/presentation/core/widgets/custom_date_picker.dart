import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';

import '../app_assets.dart';
import 'svg_image_widget.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({
    super.key,
    required this.isStartDate,
    required this.onPressed,
    required this.firstDate,
    required this.lastDay,
  });

  final bool isStartDate;
  final Function(DateTime?) onPressed;
  final DateTime firstDate;
  final DateTime lastDay;

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 396),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          widget.isStartDate
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: _CustomButton(
                        buttonLebels: const [
                          'Today',
                          'Next Monday',
                        ],
                        onFirstTap: () {
                          setState(() {
                            _selectedDate = DateTime.now();
                          });
                        },
                        onSecondTap: () {
                          final add =
                              (DateTime.sunday - DateTime.now().weekday) + 1;
                          setState(() {
                            _selectedDate =
                                DateTime.now().add(Duration(days: add));
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16,
                      ),
                      child: _CustomButton(
                        buttonLebels: const [
                          'Next Tuesday',
                          'After 1 week',
                        ],
                        onFirstTap: () {
                          final add =
                              (DateTime.sunday - DateTime.now().weekday) + 2;
                          setState(() {
                            _selectedDate =
                                DateTime.now().add(Duration(days: add));
                          });
                        },
                        onSecondTap: () {
                          setState(() {
                            _selectedDate =
                                DateTime.now().add(const Duration(days: 7));
                          });
                        },
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: _CustomButton(
                    buttonLebels: const [
                      'No date',
                      'Today',
                    ],
                    onFirstTap: () {
                      setState(() {
                        _selectedDate = null;
                      });
                    },
                    onSecondTap: () {
                      setState(() {
                        _selectedDate = DateTime.now();
                      });
                    },
                  ),
                ),
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              firstDate: widget.firstDate,
              lastDate: widget.lastDay,
              weekdayLabelTextStyle: Theme.of(context).textTheme.bodySmall,
              calendarType: CalendarDatePicker2Type.single,
              dayTextStyle: Theme.of(context).textTheme.bodySmall,
              selectedYearTextStyle: Theme.of(context).textTheme.bodySmall,
              customModePickerIcon: const SizedBox.shrink(),
              controlsTextStyle:
                  Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.background,
                      ),
              lastMonthIcon: const SvgImageWidget(
                svgImage: AppAssets.leftForwardIcon,
                height: 24,
                width: 24,
              ),
              nextMonthIcon: const SvgImageWidget(
                svgImage: AppAssets.rightForwardIcon,
                height: 24,
                width: 24,
              ),
              centerAlignModePicker: true,
              weekdayLabels: [
                'Sun',
                'Mon',
                'Tue',
                'Wed',
                'Thu',
                'Fri',
                'Sat',
              ],
            ),
            value: [_selectedDate ?? DateTime.now()],
            onValueChanged: (dates) {
              if (dates.isEmpty) return;
              final selectedDate = dates.first;
              if (selectedDate == null) return;
              setState(() {
                _selectedDate = selectedDate;
              });
            },
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
            thickness: 0.4,
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SvgImageWidget(
                        svgImage: AppAssets.calenderIcon,
                        height: 23,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          _selectedDate != null
                              ? DateFormat('dd MMM, yyyy')
                                  .format(_selectedDate!)
                              : 'No date',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary,
                      ),
                      onPressed: () => context.router.pop(),
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      onPressed: () => widget.onPressed(_selectedDate),
                      child: Text(
                        'Save',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    super.key,
    required this.buttonLebels,
    required this.onFirstTap,
    required this.onSecondTap,
  });
  final List<String> buttonLebels;
  final VoidCallback onFirstTap;
  final VoidCallback onSecondTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            onPressed: onFirstTap,
            child: Text(buttonLebels.first),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            onPressed: onSecondTap,
            child: Text(buttonLebels.last),
          ),
        ),
      ],
    );
  }
}
