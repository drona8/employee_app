import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../application/employee/employee_bloc.dart';
import '../../domain/employee/entities/employee.dart';
import '../../domain/core/error/api_failures.dart';
import '../core/app_assets.dart';
import '../core/utils/common_util.dart';
import '../core/widgets/custom_date_picker.dart';
import '../core/widgets/custom_text_field.dart';
import '../core/widgets/employee_app_bar.dart';
import '../core/widgets/svg_image_widget.dart';
import 'designation_menu.dart';

final _formKey = GlobalKey<FormState>();

@RoutePage()
class AddEmployeeScreen extends StatelessWidget {
  AddEmployeeScreen({
    super.key,
    this.isEdit = false,
  });

  final bool isEdit;

  String? _commonValidator({required String? value}) {
    if (value == null || value.isEmpty) {
      return '* Mandatory';
    }
    return null;
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

  void _onDelete({required BuildContext context}) {
    context.read<EmployeeBloc>().add(EmployeeEvent.deleteEmployee(
        employee: context.read<EmployeeBloc>().state.selectedEmployee));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
        listenWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting,
        listener: (context, state) {
          state.apiFailureOrSuccessOption.fold(
            () {
              if (!state.isSubmitting) {
                CommonUtil.handleSnackBar(
                  context: context,
                  message: isEdit
                      ? 'Employee Updated successfully!'
                      : 'Employee Added successfully!',
                  isUndoRequired: true,
                );
                context.router.pop();
                //success
              }
            },
            (either) => either.fold(
              (failure) {
                CommonUtil.handleSnackBar(
                  context: context,
                  message: failure.failureMessage,
                );
              },
              (success) {},
            ),
          );
        },
        buildWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting ||
            previous.isDeleting != current.isDeleting,
        builder: (context, state) {
          if (isEdit) {
            nameController.text = state.selectedEmployee.name;
            roleController.text = state.selectedEmployee.designation;
            startDateController.text = state.selectedEmployee.fromDate;
            endDateController.text = state.selectedEmployee.toDate;
          }
          return Scaffold(
            appBar: EmployeeAppBar(
              title: isEdit ? 'Edit Employee Details' : 'Add Employee Details',
              isEdit: isEdit,
              onDelete: () => isEdit ? _onDelete(context: context) : null,
              shimmerDeleteIcon: isEdit ? state.isDeleting : false,
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
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                    ),
                    onPressed: state.isDeleting || state.isSubmitting
                        ? null
                        : () => context.router.pop(),
                    child: Text(
                      'Cancel',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
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
                    onPressed: state.isDeleting || state.isSubmitting
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              final Employee emp = Employee.empty().copyWith(
                                name: nameController.text,
                                designation: roleController.text,
                                fromDate: startDateController.text,
                                toDate: endDateController.text,
                                key: isEdit
                                    ? context
                                        .read<EmployeeBloc>()
                                        .state
                                        .selectedEmployee
                                        .key
                                    : '',
                              );
                              context.read<EmployeeBloc>().add(
                                    EmployeeEvent.saveEmployee(
                                      employee: emp,
                                      isEdit: isEdit,
                                    ),
                                  );
                            }
                          },
                    child: Text(
                      'Save',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextField(
                      hintText: 'Employee name',
                      prefixIcon: AppAssets.personIcon,
                      validator: (value) => _commonValidator(value: value),
                      controller: nameController,
                      style: Theme.of(context).textTheme.bodyMedium!,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextField(
                      hintText: 'Select role',
                      prefixIcon: AppAssets.designationIcon,
                      readOnly: true,
                      style: Theme.of(context).textTheme.bodyMedium!,
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
                            roleController.text = value as String;
                          },
                        );
                      },
                      validator: (value) => _commonValidator(value: value),
                      controller: roleController,
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
                            style: Theme.of(context).textTheme.displayMedium!,
                            onTap: () async {
                              _showDatePicker(
                                context: context,
                                isStartDate: true,
                              );
                            },
                            validator: (value) =>
                                _commonValidator(value: value),
                            controller: startDateController,
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
                        Expanded(
                          child: CustomTextField(
                            hintText: 'No date',
                            prefixIcon: AppAssets.calenderIcon,
                            readOnly: true,
                            style: Theme.of(context).textTheme.displayMedium!,
                            onTap: () async => _showDatePicker(
                              context: context,
                              isStartDate: false,
                            ),
                            validator: (value) => null,
                            controller: endDateController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _showDatePicker({
    required BuildContext context,
    required bool isStartDate,
  }) async {
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
          child: CustomDatePicker(
            isStartDate: isStartDate,
            onPressed: (DateTime date) {
              final formatedDate = DateFormat('dd/MM/yyyy').format(date);
              if (isStartDate) startDateController.text = formatedDate;
              if (!isStartDate) endDateController.text = formatedDate;
              context.router.pop();
            },
          ),
        );
      },
    );
  }
}
