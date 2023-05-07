import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

abstract class LogoutPopUpWidget {
  static show<T>({
    required BuildContext context,
    required double height,
    required double width,
    required String message,
    Function? logoutFunction,
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
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ResponsiveTextWidget(
                  text: "Temos certeza de que você deseja sair",
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
                    Navigator.pop(context);
                    logoutFunction != null ? logoutFunction() : null;
                  },
                  height: 50,
                  width: width,
                  hintSemantics: "Sair",
                  tooltip: "Sair",
                  child: ResponsiveTextWidget(
                    text: "Sair",
                    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                    maxLines: 1,
                    maxFontSize: 26,
                    minFontSize: 18,
                    selectable: false,
                    hintSemantics: "Sair",
                    tooltipSemantics: "Sair",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: OutlinedButtonWidget(
                  onPressed: () => Navigator.pop(context),
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
