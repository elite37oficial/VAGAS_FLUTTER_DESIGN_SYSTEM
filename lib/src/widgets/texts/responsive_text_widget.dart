import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class ResponsiveTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? minFontSize;
  final double? maxFontSize;
  final double? textScaleFactor;
  final int? maxLines;
  final String? hintSemantics;
  final String? tooltipSemantics;
  final bool selectable;
  const ResponsiveTextWidget({
    Key? key,
    required this.text,
    this.textStyle,
    this.selectable = true,
    this.maxLines,
    this.minFontSize,
    this.maxFontSize,
    this.hintSemantics,
    this.tooltipSemantics,
    this.textScaleFactor = 1,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      hint: hintSemantics,
      tooltip: tooltipSemantics,
      value: hintSemantics,
      label: hintSemantics,
      hidden: false,
      enabled: true,
      obscured: false,
      increasedValue: hintSemantics,
      tagForChildren: SemanticsTag(hintSemantics ?? "text"),
      child: selectable
          ? SelectableRegion(
              selectionControls: MaterialTextSelectionControls(),
              focusNode: FocusNode(),
              child: AutoSizeText(
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
                semanticsLabel: hintSemantics,
              ),
            )
          : AutoSizeText(
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
              semanticsLabel: hintSemantics,
            ),
    );
  }
}
