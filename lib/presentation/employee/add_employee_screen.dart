import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:employee_app/presentation/core/app_assets.dart';
import 'package:employee_app/presentation/core/widgets/custom_text_field.dart';
import 'package:employee_app/presentation/core/widgets/svg_image_widget.dart';
import 'package:employee_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../core/widgets/employee_app_bar.dart';
import 'designation_menu.dart';

@RoutePage()
class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmployeeAppBar(
        title: 'Add Employee Details',
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        height: 64,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
              width: 0.5,
            ),
          ),
        ),
        child: Wrap(
          alignment: WrapAlignment.end,
          direction: Axis.horizontal,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Clear'),
            ),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextField(
              hintText: 'Employee name',
              prefixIcon: AppAssets.personIcon,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              hintText: 'Select role',
              prefixIcon: AppAssets.designationIcon,
              readOnly: true,
              suffixIcon: Container(
                margin: const EdgeInsets.fromLTRB(15, 17, 14, 17),
                child: const SvgImageWidget(
                  svgImage: AppAssets.dropdownIcon,
                  height: 24,
                  width: 24,
                ),
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  useSafeArea: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  builder: (_) {
                    return const DesignationMenu();
                  },
                ).then(
                  (value) {
                    if (value == null) return;
                    //refetch
                  },
                );
              },
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: 'Today',
                    prefixIcon: AppAssets.calenderIcon,
                    readOnly: true,
                    onTap: () async {
                      _showDatePicker(context: context);
                      /*showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Material(
                            child: SizedBox(
                              height: 886,
                              width: 428,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 143,
                                      ),
                                      //decoration: B,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 24,
                                            ),
                                            /* decoration:
                                                AppDecoration.fillWhiteA.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL16,
                                            ),*/
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(right: 8),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 68,
                                                          vertical: 8,
                                                        ),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        child: const Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(height: 2),
                                                            Text(
                                                              "Today",
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: ElevatedButton(
                                                        child: const Text(
                                                            'Next Monday'),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 16),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(right: 8),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 44,
                                                          vertical: 8,
                                                        ),
                                                        /*decoration: AppDecoration
                                                            .fillBlue
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder4,
                                                        ),*/
                                                        child: const Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(height: 2),
                                                            Text(
                                                              "Next Tuesday",
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 8),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 47,
                                                        vertical: 9,
                                                      ),
                                                      /*decoration: AppDecoration
                                                          .fillBlue
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder4,
                                                      ),*/
                                                      child: const Text(
                                                        "After 1 week",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 24),
                                                SizedBox(
                                                  height: 276,
                                                  width: 358,
                                                  child: CalendarDatePicker2(
                                                    config:
                                                        CalendarDatePicker2Config(
                                                      calendarType:
                                                          CalendarDatePicker2Type
                                                              .single,
                                                      firstDate: DateTime(
                                                          DateTime.now().year -
                                                              5),
                                                      lastDate: DateTime(
                                                          DateTime.now().year +
                                                              5),
                                                      firstDayOfWeek: 0,
                                                      weekdayLabelTextStyle:
                                                          const TextStyle(
                                                        color: Colors.blue,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                      selectedDayTextStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0XFF1DA1F2),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                      dayTextStyle:
                                                          const TextStyle(
                                                        color: Colors.blue,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                      weekdayLabels: [
                                                        "Sun",
                                                        "Mon",
                                                        "Tue",
                                                        "Wed",
                                                        "Thu",
                                                        "Fri",
                                                        "Sat"
                                                      ],
                                                      dayBorderRadius:
                                                          BorderRadius.circular(
                                                        14,
                                                      ),
                                                    ),
                                                    value: [DateTime.now()],
                                                    onValueChanged: (dates) {},
                                                  ),
                                                ),
                                                const SizedBox(height: 35),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 56),
                                          //_buildFrame1(context),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );*/
                      /*showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        helpText: '',
                        cancelText: 'Cancel',
                        confirmText: 'Save',
                        lastDate: DateTime.now().add(
                          const Duration(
                            days: 60,
                          ),
                        ),
                        builder: (context, child) {
                          return Padding(
                            padding: const EdgeInsets.all(16),
                            child: Stack(
                              children: [
                                child!,
                                Positioned(
                                  top: 80,
                                  right: 40,
                                  left: 40,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: const Text('Today'),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: const Text('Tomorrow'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );*/
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SvgImageWidget(
                  svgImage: AppAssets.rightArrowIcon,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: CustomTextField(
                    hintText: 'No date',
                    prefixIcon: AppAssets.calenderIcon,
                    readOnly: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _showDatePicker({required BuildContext context}) async {
  final config = CalendarDatePicker2WithActionButtonsConfig(
    firstDayOfWeek: 1,
    calendarType: CalendarDatePicker2Type.single,
    selectedDayTextStyle:
        const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
    selectedDayHighlightColor: Colors.purple[800],
    centerAlignModePicker: true,
    customModePickerIcon: const SizedBox(),
    //dayBuilder: _yourDayBuilder,
    //yearBuilder: _yourYearBuilder,
  );
  //showDatePicker(context: context, firstDate: firstDate, lastDate: lastDate)
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        backgroundColor: Theme.of(context).canvasColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.inversePrimary,
                          ),
                          child: const Text('Today'),
                          onPressed: () {},
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
                            backgroundColor:
                                Theme.of(context).colorScheme.inversePrimary,
                          ),
                          child: const Text('Next Monday'),
                          onPressed: () {},
                        ),
                      ),
                    ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.inversePrimary,
                          ),
                          child: const Text('Next Tuesday'),
                          onPressed: () {},
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
                            backgroundColor:
                                Theme.of(context).colorScheme.inversePrimary,
                          ),
                          child: const Text('After 1 week'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(
                    const Duration(days: 365),
                  ),
                  onDateChanged: (value) {},
                ),
                const Divider(
                  color: AppColor.lightGrey,
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
                              '23 Jan, 2024',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      )),
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
                            onPressed: () {},
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
                            onPressed: () {},
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
          ),
        ),
      );
    },
  );
  /* await showCalendarDatePicker2Dialog(
    context: context,
    config: CalendarDatePicker2WithActionButtonsConfig(
      firstDayOfWeek: 1,
      calendarType: CalendarDatePicker2Type.single,
      selectedDayTextStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      selectedDayHighlightColor: Colors.purple[800],
      centerAlignModePicker: true,
      customModePickerIcon: const SizedBox(),
      //dayBuilder: _yourDayBuilder,
      //yearBuilder: _yourYearBuilder,
    ),
    dialogSize: const Size(325, 400),
    value: [DateTime.now()],
    borderRadius: BorderRadius.circular(15),
  );*/
}

Widget _buildDefaultSingleDatePickerWithValue() {
  final config = CalendarDatePicker2WithActionButtonsConfig(
    firstDayOfWeek: 1,
    calendarType: CalendarDatePicker2Type.single,
    selectedDayTextStyle:
        const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
    selectedDayHighlightColor: Colors.purple[800],
    centerAlignModePicker: true,
    customModePickerIcon: const SizedBox(),
    //dayBuilder: _yourDayBuilder,
    //yearBuilder: _yourYearBuilder,
  );
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CalendarDatePicker2WithActionButtons(
        config: config,
        value: [DateTime.now()],
        onValueChanged: (dates) {},
      ),
      const SizedBox(height: 10),
      const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Selection(s):  '),
          SizedBox(width: 10),
          Text(
            '10',
          ),
        ],
      ),
      const SizedBox(height: 25),
    ],
  );
}
