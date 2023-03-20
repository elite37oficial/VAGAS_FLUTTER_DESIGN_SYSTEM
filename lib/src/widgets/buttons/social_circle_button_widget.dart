import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

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
      value: hint,
      label: hint,
      hidden: false,
      tagForChildren: SemanticsTag(hint ?? "button"),
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
