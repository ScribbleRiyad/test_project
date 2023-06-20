import 'package:flutter/material.dart';

import '../Utils/theme_styles.dart';
import 'garibook_text_widgets.dart';

class CustomizeButton extends StatelessWidget {
  const CustomizeButton({
    required this.onTap,
    this.borderRadius,
    required this.buttonColor,
    required this.textColor,
    this.borderColor,
    this.buttonWidth,
    this.fontSize,
    this.fontWeight,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final Color? buttonColor;
  final double? borderRadius;
  final Color? textColor;
  final String buttonText;
  final Color? borderColor;
  final double? buttonWidth;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.00,
      width: buttonWidth,
      margin: const EdgeInsets.only(left: 5.00, right: 5.00),
      decoration: BoxDecoration(
          color: buttonColor ?? Colors.white,
          border: Border.all(color: borderColor ?? Colors.white),
          borderRadius: BorderRadius.circular(borderRadius ?? 0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: GaribookTextWidget(
                text: buttonText,
                color: textColor,
                fontSize: fontSize ?? 16.0,
                fontWeight: fontWeight ?? FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectableElevatedButton extends StatelessWidget {
  const SelectableElevatedButton({
    Key? key,
    required this.widget,
    this.height,
    this.width,
    required this.onPressed,
    required this.color,
    this.borderColor,
    this.gradientColors,
    this.textStyle,
    required this.borderRadius,
    this.secondaryColor,
    required this.isSelected,
  }) : super(key: key);

  final Widget widget;
  final double? height;
  final double? width;
  final Function() onPressed;
  final Color color;
  final Color? secondaryColor;
  final Color? borderColor;
  final double borderRadius;
  final List<Color>? gradientColors;
  final TextStyle? textStyle;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 60,
      width: width ?? 220,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor:
              isSelected ? color : secondaryColor ?? AppStyles.primaryTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: borderColor != null
              ? BorderSide(
                  width: 1.5,
                  color: borderColor!,
                )
              : null,
        ),
        child: widget,
      ),
    );
  }
}
