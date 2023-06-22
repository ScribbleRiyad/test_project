import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final Key? formKey;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final String? labelText;
  final String? hintText;

  const MyTextFormField({
    Key? key,
    this.formKey,
    this.controller,
    this.maxLines,
    this.fillColor,
    this.hintText,
    this.labelText,
    this.maxLength,
    this.obscureText,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.validator,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.00, bottom: 20.00),
      child: TextFormField(
        key: formKey,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          fillColor: fillColor ?? Colors.white60,
          filled: true,
          labelText: labelText,
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.00),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.00),
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.00),
            ),
          ),
        ),
      ),
    );
  }
}
