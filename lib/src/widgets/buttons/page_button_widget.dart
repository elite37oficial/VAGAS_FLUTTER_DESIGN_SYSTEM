import 'package:flutter/material.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';

class PageButtonWidget extends StatelessWidget {
  final Widget? child;
  final Function? onPressed;
  final double width;
  final double height;
  final String? tooltip;
  final String? hintSemantics;
  const PageButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.tooltip,
    required this.hintSemantics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      tooltip: tooltip,
      hint: hintSemantics,
      enabled: onPressed != null,
      child: Tooltip(
        message: tooltip,
        child: SizedBox(
          width: width,
          height: height,
          child: ElevatedButton(
            onPressed: () => onPressed!(),
            style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color:
                          onPressed != null ? AppColors.black : AppColors.grey,
                    ),
                elevation: 5,
                foregroundColor: AppColors.grey,
                backgroundColor: AppColors.white,
                disabledForegroundColor: AppColors.grey,
                disabledBackgroundColor: AppColors.lightGrey.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: child,
          ),
        ),
      ),
    );
  }
}
