import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

abstract class ErrorPopUpWidget {
  static show<T>({
    required BuildContext context,
    required double height,
    required double width,
    required String message,
    Function? function,
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
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.errorCircle,
                      package: "vagas_design_system",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ResponsiveTextWidget(
                        text: "Erro!",
                        textStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                        maxFontSize: 24,
                        minFontSize: 18,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ResponsiveTextWidget(
                  text: message,
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                  maxFontSize: 16,
                  minFontSize: 12,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: FilledButtonWidget(
                  onPressed: () {
                    function != null ? function() : null;
                    Navigator.pop(context);
                  },
                  height: 50,
                  width: width,
                  hintSemantics: "Fechar",
                  tooltip: "Fechar",
                  child: ResponsiveTextWidget(
                    text: "Fechar",
                    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
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
      ),
    );
  }
}
