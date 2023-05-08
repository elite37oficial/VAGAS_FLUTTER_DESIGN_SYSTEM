import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class BigStaticWebFieldWidget extends StatefulWidget {
  final double? fontSize;
  final int? maxLength;
  final Widget? prefixIcon;
  final String? label;
  final TextStyle? labelStyle;
  final String? labelSemantic;
  final String? labelTooltip;
  final String? hint;
  final TextStyle? hintStyle;
  final String? hintSemantic;
  final String? fieldSemantic;
  final double? height;
  final double? width;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final Function(String?)? onFieldSubmitted;
  final TextInputType? inputType;
  final bool isPassword;
  final bool readyOnly;
  final bool onError;
  final BoxConstraints? constraints;
  final String? Function(String?)? validator;
  const BigStaticWebFieldWidget({
    Key? key,
    this.prefixIcon,
    this.maxLength = 200,
    this.label,
    this.labelStyle,
    this.labelSemantic,
    this.labelTooltip,
    this.constraints,
    this.hint,
    this.hintStyle,
    this.hintSemantic,
    this.fieldSemantic,
    this.height,
    this.width,
    required this.controller,
    this.inputFormatters,
    this.onChanged,
    this.onFieldSubmitted,
    this.inputType,
    this.onError = false,
    this.validator,
    this.fontSize,
    this.isPassword = false,
    this.readyOnly = false,
  }) : super(key: key);

  @override
  State<BigStaticWebFieldWidget> createState() =>
      _BigStaticWebFieldWidgetState();
}

class _BigStaticWebFieldWidgetState extends State<BigStaticWebFieldWidget> {
  Color _borderColor = AppColors.black.withOpacity(0.5);

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          setState(() {
            _borderColor = AppColors.black;
          });
        } else {
          setState(() {
            _borderColor = widget.onError
                ? AppColors.red
                : AppColors.black.withOpacity(0.5);
          });
        }
      },
      child: Semantics(
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
                      textStyle:
                          Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: widget.onError
                                    ? AppColors.red
                                    : AppColors.black,
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
              height: widget.height,
              width: widget.width,
              child: TextFormField(
                maxLines: null,
                minLines: null,
                expands: true,
                maxLength: widget.maxLength,
                readOnly: widget.readyOnly,
                validator: widget.validator,
                controller: widget.controller,
                inputFormatters: widget.inputFormatters,
                onChanged: widget.onChanged,
                onFieldSubmitted: widget.onFieldSubmitted,
                keyboardType: widget.inputType,
                cursorColor: widget.onError ? AppColors.red : _borderColor,
                cursorHeight: 18,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.black,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  focusColor: AppColors.accentBlue,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  constraints: widget.constraints,
                  hintText: widget.hint,
                  hintStyle: widget.hintStyle ??
                      const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.lightGrey,
                      ),
                  prefixIcon: widget.prefixIcon,
                  contentPadding: const EdgeInsets.only(
                      bottom: 5, left: 20, right: 20, top: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
