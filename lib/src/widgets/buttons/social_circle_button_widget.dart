import 'package:flutter/material.dart';

class SocialCircleButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final Widget? widget;
  final Function onTap;
  final String? tooltip;
  final String? hint;
  const SocialCircleButtonWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.backgroundColor,
    this.widget,
    required this.onTap,
    this.tooltip,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      hint: hint,
      tooltip: tooltip,
      child: InkWell(
        onTap: () => onTap(),
        borderRadius: BorderRadius.circular(50),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor,
          child: SizedBox(
            height: height,
            width: width,
            child: Center(child: widget),
          ),
        ),
      ),
    );
  }
}
