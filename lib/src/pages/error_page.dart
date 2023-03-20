import 'package:flutter/material.dart';
import 'package:vagas_design_system/src/widgets/texts/responsive_text_widget.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ResponsiveTextWidget(
          text: "404",
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 27,
          ),
        ),
      ),
    );
  }
}
