import 'package:flutter/material.dart';
import 'package:vagas_design_system/vagas_design_system.dart';

class TopBarWebWidget extends StatefulWidget {
  final double height;
  final bool? isMobile;
  final String username;
  final Function jobsFunction;
  final Function enterprisesFunction;
  final Function logout;
  final double widthPopup;
  double? width;
  TopBarWebWidget(
      {Key? key,
      required this.username,
      required this.jobsFunction,
      required this.enterprisesFunction,
      required this.logout,
      required this.height,
      required this.widthPopup,
      this.width,
      this.isMobile = false})
      : super(key: key);

  @override
  State<TopBarWebWidget> createState() => _TopBarWebWidgetState();
}

class _TopBarWebWidgetState extends State<TopBarWebWidget> {
  OverlayEntry? entry;
  OverlayState? overlay;
  final LayerLink _layerLink = LayerLink();

  bool isOpened = false;

  void _showToolTip() {
    setState(() => isOpened = true);

    entry = OverlayEntry(
      builder: (builder) => Positioned(
        height: 190,
        width: widget.widthPopup,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(-80, 30),
          child: Material(
            elevation: 0,
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              child: ResponsiveTextWidget(
                                text: "Recrutador",
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                maxFontSize: 24,
                                minFontSize: 18,
                                maxLines: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: ResponsiveTextWidget(
                                text: "Gustavo",
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                maxFontSize: 20,
                                minFontSize: 10,
                                maxLines: 1,
                              ),
                            ),
                            ResponsiveTextWidget(
                              text: "gustavohenricknapolitano@gmail.com",
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                              maxFontSize: 20,
                              minFontSize: 10,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onTap: () {
                        _hideToolTip();
                        widget.logout(context);
                      },
                      leading: const Icon(Icons.logout_rounded,
                          color: AppColors.red),
                      title: ResponsiveTextWidget(
                        text: "Sair da Conta",
                        selectable: false,
                        textStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: AppColors.red,
                                  fontWeight: FontWeight.w700,
                                ),
                        maxFontSize: 24,
                        minFontSize: 18,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    final overlay = Overlay.of(context);
    overlay!.insert(entry!);
  }

  void _hideToolTip() {
    setState(() => isOpened = false);
    entry!.remove();
    entry!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.width = widget.width ?? MediaQuery.of(context).size.width;
    return Material(
      color: AppColors.greyBlue,
      elevation: 5,
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            Row(
              children: [
                widget.isMobile == false
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
                    onTap: () => widget.jobsFunction(),
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
                  onTap: () => widget.enterprisesFunction(),
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
              onTap: () => isOpened ? _hideToolTip() : _showToolTip(),
              child: CompositedTransformTarget(
                link: _layerLink,
                child: ResponsiveTextWidget(
                  text: "Bem-vindo(a), ${widget.username}!",
                  hintSemantics: "Bem-vindo(a), ${widget.username}!",
                  tooltipSemantics: "Bem-vindo(a), ${widget.username}!",
                  selectable: false,
                  textScaleFactor: 1,
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.white,
                      ),
                  maxLines: 1,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
