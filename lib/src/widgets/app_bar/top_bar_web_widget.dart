import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class TopBarWebWidget extends StatelessWidget {
  final double height;
  final bool? isMobile;
  final String username;
  double? width;
  TopBarWebWidget(
      {Key? key,
      required this.username,
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
                  child: GestureDetector(
                    onTap: () {},
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
                GestureDetector(
                  onTap: () {},
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
            ResponsiveTextWidget(
              text: "Bem-vindo(a), $username!",
              hintSemantics: "Bem-vindo(a), $username!",
              tooltipSemantics: "Bem-vindo(a), $username!",
              textScaleFactor: 1,
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.white,
                  ),
              maxLines: 1,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
