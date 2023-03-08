import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class ResponsiveTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? minFontSize;
  final double? maxFontSize;
  final double? textScaleFactor;
  final int? maxLines;

  const ResponsiveTextWidget({
    Key? key,
    required this.text,
    this.textStyle,
    this.maxLines = 1,
    this.minFontSize,
    this.maxFontSize,
    this.textScaleFactor = 1,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      overflow: TextOverflow.ellipsis,
      style: textStyle ??
          const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
      textAlign: textAlign,
      maxLines: maxLines,
      textScaleFactor: textScaleFactor,
      maxFontSize: maxFontSize ?? double.infinity,
      minFontSize: minFontSize ?? 12,
    );
  }
}
