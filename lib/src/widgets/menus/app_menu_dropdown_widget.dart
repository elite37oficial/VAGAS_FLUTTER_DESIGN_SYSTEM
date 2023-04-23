import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class AppMenuDropDownWidget extends StatefulWidget {
  final double? fontSize;

  final Widget? prefixIcon;
  final String? label;
  final TextStyle? labelStyle;
  final String? labelSemantic;
  final String? labelTooltip;
  final String? hint;
  final TextStyle? hintStyle;
  final String? hintSemantic;
  final String? fieldSemantic;
  final double? heigth;
  final double? width;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final bool onError;
  final BoxConstraints? constraints;
  final String? Function(String?)? validator;
  final List<DropdownMenuItem<String>>? listOptions;
  const AppMenuDropDownWidget({
    Key? key,
    this.fontSize,
    this.prefixIcon,
    this.label,
    this.labelStyle,
    this.labelSemantic,
    this.labelTooltip,
    this.hint,
    this.hintStyle,
    this.hintSemantic,
    this.fieldSemantic,
    this.heigth,
    this.width,
    required this.controller,
    this.onChanged,
    required this.onError,
    this.constraints,
    this.validator,
    required this.listOptions,
  }) : super(key: key);

  @override
  State<AppMenuDropDownWidget> createState() => _AppMenuDropDownWidgetState();
}

class _AppMenuDropDownWidgetState extends State<AppMenuDropDownWidget> {
  final Color _borderColor = AppColors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      textField: true,
      container: true,
      hint: widget.hintSemantic,
      tooltip: widget.fieldSemantic,
      value: widget.hintSemantic,
      label: widget.hintSemantic,
      enabled: true,
      hidden: false,
      increasedValue: widget.hintSemantic,
      tagForChildren: SemanticsTag(widget.hintSemantic ?? "textfield"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.label == null
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ResponsiveTextWidget(
                    text: widget.label ?? "",
                    maxLines: 1,
                    maxFontSize: widget.fontSize,
                    textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                        ),
                    hintSemantics: widget.label,
                    tooltipSemantics: widget.label,
                  ),
                ),
          Container(
            constraints: widget.constraints,
            decoration: BoxDecoration(
              border: Border.all(
                  color: widget.onError ? AppColors.red : _borderColor,
                  width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.only(top: 5),
            height: widget.heigth,
            width: widget.width,
            child: DropdownButton(
              items: widget.listOptions,
              onChanged: (value) => setState(() => widget.controller.text),
              isExpanded: true,
              value: widget.controller.text,
              underline: null,
              enableFeedback: true,
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.black,
              ),
              hint: ResponsiveTextWidget(
                text: widget.hint ?? "",
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
