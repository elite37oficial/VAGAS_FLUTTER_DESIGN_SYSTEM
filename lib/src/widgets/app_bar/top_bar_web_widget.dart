import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class TopBarWebWidget extends StatelessWidget {
  final double height;
  double? width;
  TopBarWebWidget({Key? key, required this.height, this.width})
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
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.logoHorizontal,
                  package: "vagas_design_system",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: ResponsiveTextWidget(
                      text: "Minhas Vagas",
                      hintSemantics: "Minhas Vagas",
                      tooltipSemantics: "Minhas Vagas",
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
            ResponsiveTextWidget(
              text: "Bem-vindo(a), Usuário da silva!",
              hintSemantics: "Bem-vindo(a), Usuário da silva!",
              tooltipSemantics: "Bem-vindo(a), Usuário da silva!",
              textScaleFactor: 1,
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.white,
                  ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
