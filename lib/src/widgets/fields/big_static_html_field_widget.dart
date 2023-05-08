import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:quill_html_editor/quill_html_editor.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';

class BigStaticHTMLFieldWidget extends StatefulWidget {
  final double height;
  final bool onError;
  final String? hintSemantic;
  final String? fieldSemantic;
  final TextEditingController textController;
  final String hint;
  final Function? onChanged;
  const BigStaticHTMLFieldWidget({
    Key? key,
    required this.height,
    required this.onError,
    required this.textController,
    this.onChanged,
    this.fieldSemantic,
    this.hintSemantic,
    required this.hint,
  }) : super(key: key);

  @override
  State<BigStaticHTMLFieldWidget> createState() =>
      _BigStaticHTMLFieldWidgetState();
}

class _BigStaticHTMLFieldWidgetState extends State<BigStaticHTMLFieldWidget> {
  Color _borderColor = AppColors.black.withOpacity(0.5);

  final _focusNode = FocusNode();

  final customToolBarList = [
    ToolBarStyle.bold,
    ToolBarStyle.italic,
    ToolBarStyle.align,
    ToolBarStyle.listBullet,
    ToolBarStyle.listOrdered,
  ];

  final QuillEditorController controller = QuillEditorController();

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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: widget.onError ? AppColors.red : _borderColor,
            ),
          ),
          height: widget.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ToolBar(
                  controller: controller,
                  toolBarConfig: customToolBarList,
                  activeIconColor: AppColors.black,
                  iconColor: AppColors.black.withOpacity(0.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                    color: AppColors.lightGrey.withOpacity(0.5), height: 1.5),
              ),
              QuillHtmlEditor(
                text: "\n ${widget.textController.text}",
                hintText: widget.hint,
                controller: controller,
                isEnabled: true,
                onFocusChanged: (focus) => setState(() {}),
                minHeight: widget.height - 80,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                hintTextPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      color: AppColors.lightGrey.withOpacity(0.5),
                    ),
                onTextChanged: (String? value) =>
                    setState(() => widget.textController.text = value ?? ""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
