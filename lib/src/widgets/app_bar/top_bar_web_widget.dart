import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class TopBarWebWidget extends StatelessWidget {
  final double height;
  final bool? isMobile;
  final String username;
  final Function jobsFunction;
  final Function enterprisesFunction;
  final Function logout;
  double? width;
  TopBarWebWidget(
      {Key? key,
      required this.username,
      required this.jobsFunction,
      required this.enterprisesFunction,
      required this.logout,
      required this.height,
      this.width,
      this.isMobile = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = width ?? MediaQuery.of(context).size.width;
    return Material(
      color: AppColors.greyBlue,
      elevation: 5,
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            Row(
              children: [
                isMobile == false
                    ? SvgPicture.asset(
                        AppImages.logoHorizontal,
                        package: "vagas_design_system",
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: InkWell(
                    focusColor: AppColors.transparent,
                    highlightColor: AppColors.transparent,
                    hoverColor: AppColors.transparent,
                    splashColor: AppColors.transparent,
                    onTap: () => enterprisesFunction(),
                    child: ResponsiveTextWidget(
                      text: "Minhas Vagas",
                      hintSemantics: "Minhas Vagas",
                      tooltipSemantics: "Minhas Vagas",
                      selectable: false,
                      textScaleFactor: 1,
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: AppColors.white,
                              ),
                      maxLines: 1,
                    ),
                  ),
                ),
                InkWell(
                  focusColor: AppColors.transparent,
                  highlightColor: AppColors.transparent,
                  hoverColor: AppColors.transparent,
                  splashColor: AppColors.transparent,
                  onTap: () => enterprisesFunction(),
                  child: ResponsiveTextWidget(
                    text: "Minhas empresas",
                    hintSemantics: "Minhas empresas",
                    selectable: false,
                    tooltipSemantics: "Minhas empresas",
                    textScaleFactor: 1,
                    textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.white,
                        ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Spacer(),
            InkWell(
              onTap: () => logout(),
              child: ResponsiveTextWidget(
                text: "Bem-vindo(a), $username!",
                hintSemantics: "Bem-vindo(a), $username!",
                tooltipSemantics: "Bem-vindo(a), $username!",
                selectable: false,
                textScaleFactor: 1,
                textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.white,
                    ),
                maxLines: 1,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
