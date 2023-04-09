import 'package:app_jenosize/app/core/extension/container.dart';
import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:app_jenosize/app/data/enum/button.dart';
import 'package:flutter/material.dart';
import 'package:textless/textless.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final Image? image;
  final ButtonSizeType size;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool? isHiddenBorder;
  final double? borderRadius;
  final bool isBoxShadow;
  final bool isEnable;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onTap;

  ButtonWidget({
    required this.title,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.image,
    this.size = ButtonSizeType.l,
    this.color = AppColors.white,
    this.textColor = AppColors.white,
    this.borderColor = AppColors.white,
    this.borderRadius = 0,
    this.isBoxShadow = true,
    this.onTap,
    this.padding,
    this.isHiddenBorder,
    this.isEnable = true,
  });

  ButtonWidget.whiteShadow({
    required this.title,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.onTap,
    this.image,
    this.size = ButtonSizeType.l,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        color = AppColors.white,
        textColor = AppColors.black,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  ButtonWidget.greenShadow({
    required this.title,
    this.icon,
    this.iconColor,
    this.onTap,
    this.image,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        size = ButtonSizeType.l,
        color = Color(0xFF4AB0A9),
        iconSize = spaceL,
        textColor = AppColors.white,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  ButtonWidget.blueShadow({
    required this.title,
    this.icon,
    this.onTap,
    this.image,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        size = ButtonSizeType.l,
        color = Color(0xff407CCB),
        iconColor = AppColors.white,
        iconSize = spaceL,
        textColor = AppColors.white,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  ButtonWidget.redShadow({
    required this.title,
    this.icon,
    this.onTap,
    this.image,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        size = ButtonSizeType.l,
        color = AppColors.red,
        iconColor = AppColors.red,
        iconSize = spaceL,
        textColor = AppColors.white,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  ButtonWidget.grayShadow({
    required this.title,
    this.icon,
    this.iconColor,
    this.onTap,
    this.image,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        size = ButtonSizeType.l,
        color = AppColors.light2Gray,
        iconSize = spaceL,
        textColor = AppColors.white,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  ButtonWidget.yellow({
    required this.title,
    this.icon,
    this.onTap,
    this.image,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        size = ButtonSizeType.l,
        color = AppColors.yellowMaize,
        iconColor = AppColors.yellowMaize,
        iconSize = spaceL,
        textColor = AppColors.black,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  ButtonWidget.whiteShadowImage({
    required this.title,
    this.icon,
    this.onTap,
    this.image,
    this.isEnable = true,
  })  : isHiddenBorder = false,
        size = ButtonSizeType.l,
        color = AppColors.white,
        iconColor = AppColors.white,
        iconSize = spaceL,
        textColor = AppColors.black,
        borderColor = AppColors.transparent,
        borderRadius = spaceS,
        padding = EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceS),
        isBoxShadow = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnable ? onTap : null,
      child: Container(
        padding: padding ?? EdgeInsets.symmetric(horizontal: spaceM),
        alignment: Alignment.center,
        decoration: backgroundButton(),
        child: titleButton(),
      ),
    );
  }

  Widget titleButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (image != null)
          Container(
            margin: EdgeInsets.only(top: spaceSS),
            height: spaceXL,
            child: image,
          ),
        if (image != null) horizontalSpaceSS,
        if (icon != null)
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        if (icon != null && title != "") horizontalSpaceSS,
        if (size == ButtonSizeType.s) title.ol.color(textColor).height(1.1),
        if (size == ButtonSizeType.m) title.b2.color(textColor).height(1.1),
        if (size == ButtonSizeType.l || size == ButtonSizeType.xl)
          title.btn.color(textColor).height(1.1),
      ],
    );
  }

  BoxDecoration backgroundButton() {
    return BoxDecoration(
      color: isEnable ? color : AppColors.light2Gray,
      border: Border.all(
        color: borderColor,
        width: 1,
      ),
      borderRadius:
          borderRadius != null ? AppBorderRadius.custom(borderRadius!) : AppBorderRadius.s,
      boxShadow: AppShadow.medium,
    );
  }
}

class ButtonIconWidget extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onTap;

  ButtonIconWidget({this.icon, this.iconColor, this.iconSize, this.padding, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: backgroundButton(),
        child: titleButton(),
      ),
    );
  }

  Widget titleButton() {
    return Padding(
      padding: padding ?? EdgeInsets.all(spaceS),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }

  BoxDecoration backgroundButton() {
    return BoxDecoration(
      color: AppColors.white,
      border: Border.all(
        color: AppColors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(spaceS),
      boxShadow: AppShadow.medium,
    );
  }
}
