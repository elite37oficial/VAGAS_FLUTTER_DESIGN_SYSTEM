import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height * 0.7,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.65,
            child: SvgPicture.asset(
              AppImages.logoVagas,
              fit: BoxFit.fitWidth,
              color: AppColors.darkBlue,
              package: "vagas_design_system",
            ),
          ),
          SizedBox(
            width: size.width * 0.25,
            child: LinearProgressIndicator(
              backgroundColor: AppColors.lightGrey.withOpacity(0.5),
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    ));
  }
}
