import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

abstract class SuccessActionPopUpWidget {
  static show<T>({
    required BuildContext context,
    required double height,
    required double width,
    required String message,
    required String actionButtonText,
    required String actionButtonHint,
    required String actionButtonTooltip,
    Function? actionFunction,
    Function? closeFunction,
  }) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrollable: true,
      content: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SvgPicture.asset(
                AppImages.successFilled,
                package: "vagas_design_system",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ResponsiveTextWidget(
                text: "Concluído com Sucesso!",
                textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                maxFontSize: 20,
                minFontSize: 14,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 5),
              child: FilledButtonWidget(
                onPressed: () =>
                    actionFunction != null ? actionFunction() : null,
                height: 35,
                width: width * 0.2,
                hintSemantics: actionButtonHint,
                tooltip: actionButtonTooltip,
                child: ResponsiveTextWidget(
                  text: actionButtonText,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                  maxFontSize: 26,
                  minFontSize: 18,
                  selectable: false,
                  hintSemantics: actionButtonHint,
                  tooltipSemantics: actionButtonTooltip,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 5),
              child: OutlinedButtonWidget(
                onPressed: () {
                  closeFunction != null ? closeFunction() : null;
                  Navigator.pop(context);
                },
                height: 35,
                width: width * 0.2,
                hintSemantics: "Fechar",
                tooltip: "Fechar",
                child: ResponsiveTextWidget(
                  text: actionButtonText,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                  maxFontSize: 26,
                  minFontSize: 18,
                  selectable: false,
                  hintSemantics: "Fechar",
                  tooltipSemantics: "Fechar",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
