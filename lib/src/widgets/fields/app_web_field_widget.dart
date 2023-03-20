import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';
import 'package:vagas_design_system/src/widgets/widgets_export.dart';

class AppWebFieldWidget extends StatefulWidget {
  final double? fontSize;
  final Widget? prefixIcon;
  final String? label;
  final TextStyle? labelStyle;
  final String? labelSemantic;
  final String? labelTooltip;
  final String? hint;
  final String? labelText;
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
  final BoxConstraints? constraints;
  final String? Function(String?)? validator;
  const AppWebFieldWidget({
    Key? key,
    this.prefixIcon,
    this.label,
    this.labelText,
    this.labelStyle,
    this.labelSemantic,
    this.labelTooltip,
    this.constraints,
    this.hint,
    this.hintStyle,
    this.hintSemantic,
    this.fieldSemantic,
    this.heigth,
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
  State<AppWebFieldWidget> createState() => _AppWebFieldWidgetState();
}

class _AppWebFieldWidgetState extends State<AppWebFieldWidget> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label == null
            ? const SizedBox.shrink()
            : ResponsiveTextWidget(
                text: widget.label ?? "",
                textStyle: widget.labelStyle,
                hintSemantics: widget.labelSemantic,
                tooltipSemantics: widget.labelTooltip,
              ),
        widget.label == null
            ? const SizedBox.shrink()
            : const SizedBox(height: 5),
        Semantics(
          textField: true,
          container: true,
          hint: widget.hintSemantic,
          tooltip: widget.fieldSemantic,
          value: widget.hintSemantic,
          label: widget.hintSemantic,
          enabled: true,
          hidden: false,
          obscured: obscure,
          increasedValue: widget.hintSemantic,
          tagForChildren: SemanticsTag(widget.hintSemantic ?? "textfield"),
          child: Container(
            constraints: widget.constraints,
            height: widget.heigth,
            width: widget.width,
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
              cursorHeight: 18,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.grey,
              ),
              decoration: InputDecoration(
                labelText: widget.labelText,
                constraints: widget.constraints,
                hintText: widget.hint,
                hintStyle: widget.hintStyle ??
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColors.lightGrey,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 1,
                      color: widget.onError ? AppColors.red : AppColors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 1,
                      color: widget.onError ? AppColors.red : AppColors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: AppColors.grey),
                ),
                prefixIcon: widget.prefixIcon,
                contentPadding:
                    const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                suffixIcon: widget.isPassword
                    ? Semantics(
                        button: true,
                        hint: "Botão de Visualizar Senha",
                        tooltip: "Visualizar Senha",
                        value: "Visualizar Senha",
                        label: "Botão de Visualizar Senha",
                        hidden: false,
                        enabled: true,
                        obscured: false,
                        increasedValue: widget.hintSemantic,
                        tagForChildren: const SemanticsTag("button"),
                        child: GestureDetector(
                          onTap: () => setState(() => obscure = !obscure),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: SizedBox(
                              height: widget.heigth == null
                                  ? 40
                                  : widget.heigth! * 0.75,
                              width: 20,
                              child: Center(
                                child: FaIcon(
                                  obscure
                                      ? FontAwesomeIcons.eyeSlash
                                      : FontAwesomeIcons.eye,
                                  color: widget.onError
                                      ? AppColors.red
                                      : AppColors.lightGrey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
