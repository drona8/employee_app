import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app_assets.dart';
import 'svg_image_widget.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    super.key,
    required this.isStartDate,
    required this.onPressed,
  });

  final bool isStartDate;
  final Function(DateTime) onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
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
            isStartDate
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: _CustomButton(
                          buttonLebels: [
                            'Today',
                            'Next Monday',
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.0,
                          right: 16,
                        ),
                        child: _CustomButton(
                          buttonLebels: [
                            'Next Tuesday',
                            'After 1 week',
                          ],
                        ),
                      ),
                    ],
                  )
                : const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: _CustomButton(
                      buttonLebels: [
                        'No date',
                        'Today',
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
                        onPressed: () => onPressed(DateTime.now()),
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
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    super.key,
    required this.buttonLebels,
  });
  final List<String> buttonLebels;
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
            child: Text(buttonLebels.first),
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
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            child: Text(buttonLebels.last),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
