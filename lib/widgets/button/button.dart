import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.buttonTitle,
    required this.shadowColor,
    required this.onButtonPressed,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonIcon,
    this.titleColor,
    this.titleFontWeight,
    this.iconColor,
    this.titleFontSize,
  });

  final Color buttonColor;
  final String buttonTitle;
  final double? buttonHeight;
  final double? buttonWidth;
  final IconData? buttonIcon;
  final Color? titleColor;
  final FontWeight? titleFontWeight;
  final Color shadowColor;
  final Color? iconColor;
  final double? titleFontSize;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 0.1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(buttonIcon),
              color: iconColor,
            ),
            Text(
              buttonTitle,
              style: TextStyle(
                color: titleColor,
                fontWeight: titleFontWeight,
                fontSize: titleFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
