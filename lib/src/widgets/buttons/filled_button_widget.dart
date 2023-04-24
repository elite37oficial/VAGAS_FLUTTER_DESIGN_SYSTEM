import 'package:flutter/material.dart';
import 'package:vagas_design_system/src/themes/app_colors.dart';

class FilledButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final Function? onPressed;
  final Widget? child;
  final Color primaryColor;
  final Color secundaryColor;
  Color? borderColor;
  final String tooltip;
  final String hintSemantics;

  FilledButtonWidget({
    Key? key,
    required this.height,
    required this.width,
    this.primaryColor = AppColors.greyBlue,
    this.secundaryColor = AppColors.white,
    this.borderColor,
    this.onPressed,
    this.child,
    required this.tooltip,
    required this.hintSemantics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    borderColor = primaryColor;
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
            style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: onPressed != null ? secundaryColor : AppColors.grey,
                  ),
              foregroundColor: borderColor,
              side: BorderSide(color: borderColor ?? primaryColor),
              backgroundColor: primaryColor,
              disabledForegroundColor: AppColors.grey,
              disabledBackgroundColor: AppColors.lightGrey.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  width: 1,
                  color: borderColor != null ? borderColor! : primaryColor,
                ),
              ),
            ),
            onPressed: onPressed == null ? null : () => onPressed!(),
            child: child,
          ),
        ),
      ),
    );
  }
}
