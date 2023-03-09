import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';
import 'package:vagas_design_system/src/widgets/widgets_export.dart';

class AppFieldWidget extends StatefulWidget {
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
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final Function(String?)? onFieldSubmitted;
  final TextInputType? inputType;
  final bool isPassword;
  final bool readyOnly;
  final bool onError;
  final String? Function(String?)? validator;
  const AppFieldWidget({
    Key? key,
    this.heigth,
    this.prefixIcon,
    this.label,
    this.labelStyle,
    this.labelSemantic,
    this.labelTooltip,
    this.hint,
    this.hintStyle,
    this.hintSemantic,
    this.fieldSemantic,
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
  State<AppFieldWidget> createState() => _AppFieldWidgetState();
}

class _AppFieldWidgetState extends State<AppFieldWidget> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.label == null,
          child: ResponsiveTextWidget(
            text: widget.label ?? "",
            textStyle: widget.labelStyle,
            hintSemantics: widget.labelSemantic,
            tooltipSemantics: widget.labelTooltip,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: widget.heigth ?? 45,
          width: widget.width ?? 150,
          child: Stack(
            children: [
              Container(
                height: widget.heigth ?? 45,
                width: widget.width ?? 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Semantics(
                textField: true,
                hint: widget.hintSemantic,
                tooltip: widget.fieldSemantic,
                child: TextFormField(
                  readOnly: widget.readyOnly,
                  obscureText: widget.isPassword ? obscure : false,
                  validator: widget.validator,
                  controller: widget.controller,
                  inputFormatters: widget.inputFormatters,
                  onChanged: widget.onChanged,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  keyboardType: widget.inputType,
                  cursorColor: widget.onError ? AppColors.red : AppColors.grey,
                  cursorHeight: 40,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: AppColors.grey,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    hintStyle: widget.hintStyle,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1.5,
                          color:
                              widget.onError ? AppColors.red : AppColors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1.5,
                          color:
                              widget.onError ? AppColors.red : AppColors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 1.5, color: AppColors.grey),
                    ),
                    prefixIcon: widget.prefixIcon,
                    contentPadding:
                        const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    suffixIcon: widget.isPassword
                        ? GestureDetector(
                            onTap: () => setState(() => obscure = !obscure),
                            child: Icon(
                              obscure ? Icons.visibility_off : Icons.visibility,
                              color: widget.onError ? AppColors.red : null,
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
