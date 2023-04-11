import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class ErrorPage extends StatefulWidget {
  final Function goToHome;
  const ErrorPage({Key? key, required this.goToHome}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.greyBlue,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ResponsiveTextWidget(
              text: "404",
              textStyle: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
              maxFontSize: 64,
              minFontSize: 42,
              maxLines: 1,
              hintSemantics: "ErrorPage",
              tooltipSemantics: "ErrorPage",
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: ResponsiveTextWidget(
                text: "Página não Encontrada!",
                textStyle: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                ),
                maxFontSize: 37,
                minFontSize: 22,
                maxLines: 1,
                hintSemantics: "ErrorPage",
                tooltipSemantics: "ErrorPage",
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 30),
            //   child: FilledButtonWidget(
            //     height: 50,
            //     width: size.width * 0.25 <= 100 ? 100 : size.width * 0.25,
            //     onPressed: () =>
            //         setState(() async => await widget.goToHome(context)),
            //     tooltip: "voltar",
            //     hintSemantics: "voltar",
            //     primaryColor: AppColors.white,
            //     secundaryColor: AppColors.greyBlue,
            //     child: const ResponsiveTextWidget(
            //       text: "Voltar",
            //       textStyle: TextStyle(
            //         color: AppColors.greyBlue,
            //         fontWeight: FontWeight.w700,
            //       ),
            //       maxLines: 1,
            //       hintSemantics: "voltar",
            //       tooltipSemantics: "voltar",
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
