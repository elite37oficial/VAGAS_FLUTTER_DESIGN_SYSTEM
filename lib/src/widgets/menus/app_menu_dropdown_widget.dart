import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class AppMenuDropDownWidget extends StatefulWidget {
  final String label;
  TextEditingController controller;
  final String hint;
  final String semantics;
  final Function(String?) onChanged;
  final List<DropdownMenuItem<String>> listItens;
  bool error;
  bool onlyDropdown;
  final bool isEnable;
  final double height;

  AppMenuDropDownWidget({
    Key? key,
    required this.height,
    required this.semantics,
    required this.controller,
    required this.hint,
    required this.label,
    required this.listItens,
    required this.onChanged,
    required this.error,
    this.onlyDropdown = false,
    this.isEnable = true,
  }) : super(key: key);

  @override
  State<AppMenuDropDownWidget> createState() => _AppMenuDropDownWidgetState();
}

class _AppMenuDropDownWidgetState extends State<AppMenuDropDownWidget> {
  final _focusNode = FocusNode();

  Color _borderColor = AppColors.black.withOpacity(0.5);

  @override
  void initState() {
    super.initState();
  }

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
            _borderColor =
                widget.error ? AppColors.red : AppColors.black.withOpacity(0.5);
          });
        }
      },
      child: Semantics(
        hint: widget.semantics,
        tooltip: widget.semantics,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            !widget.onlyDropdown
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ResponsiveTextWidget(
                      text: widget.label,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                            fontWeight: FontWeight.w700,
                            color:
                                widget.error ? AppColors.red : AppColors.black,
                          ),
                    ),
                  )
                : Container(),
            widget.listItens.isEmpty
                ? Container(
                    height: widget.height,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: _borderColor)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ResponsiveTextWidget(
                          text: widget.hint,
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: AppColors.grey),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: widget.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color:
                                widget.error ? AppColors.red : _borderColor)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        items: widget.listItens,
                        hint: ResponsiveTextWidget(
                          text: widget.hint,
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.grey,
                                  ),
                          maxLines: 1,
                          maxFontSize: 22,
                          minFontSize: 16,
                          hintSemantics: "hint",
                          tooltipSemantics: "hint",
                        ),
                        iconStyleData: const IconStyleData(
                            icon: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.black,
                              ),
                            ),
                            openMenuIcon: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: AppColors.black,
                              ),
                            )),
                        onChanged: widget.onChanged,
                        isExpanded: true,
                        value: widget.controller.text.isEmpty
                            ? null
                            : widget.controller.text,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
