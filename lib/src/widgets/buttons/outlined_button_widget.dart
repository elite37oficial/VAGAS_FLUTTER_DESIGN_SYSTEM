import 'package:flutter/material.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final Widget? child;
  final Color primaryColor;
  final Color secundaryColor;
  final Function? onPressed;
  final double height;
  final double width;
  final String tooltip;
  final String hintSemantics;
  const OutlinedButtonWidget({
    Key? key,
    this.child,
    this.primaryColor = AppColors.greyBlue,
    this.secundaryColor = AppColors.white,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.tooltip,
    required this.hintSemantics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      tooltip: tooltip,
      hint: hintSemantics,
      enabled: onPressed != null,
      child: Tooltip(
        message: tooltip,
        child: SizedBox(
          height: height,
          width: width,
          child: ElevatedButton(
            onPressed: () => onPressed!(),
            style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: onPressed != null ? primaryColor : AppColors.grey,
                  ),
              foregroundColor: primaryColor,
              backgroundColor: secundaryColor,
              disabledForegroundColor: AppColors.grey,
              disabledBackgroundColor: AppColors.lightGrey.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
