import 'package:flutter/material.dart';

import 'svg_image_widget.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String prefixIcon;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final bool readOnly;
  final Function(String?) validator;
  final TextEditingController controller;
  final TextStyle style;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.validator,
    required this.controller,
    required this.style,
    this.onTap,
    this.suffixIcon,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: style,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      maxLines: 1,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: hintText,
        helperText: '',
        hintStyle: Theme.of(context).textTheme.titleMedium,
        prefixIcon: Container(
          margin: const EdgeInsets.all(6),
          child: SvgImageWidget(
            svgImage: prefixIcon,
            height: 24,
            width: 24,
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 56,
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIcon != null
            ? const BoxConstraints(
                maxHeight: 56,
              )
            : null,
        isDense: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 1,
          ),
        ),
      ),
      validator: (value) => validator(value),
    );
  }
}
