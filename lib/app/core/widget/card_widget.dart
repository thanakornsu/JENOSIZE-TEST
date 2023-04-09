import 'package:app_jenosize/app/core/extension/container.dart';
import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final Alignment? alignment;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  const CardWidget({
    this.child,
    this.color = AppColors.white,
    this.alignment = Alignment.center,
    this.padding = EdgeInsets.zero,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: alignment,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: backgroundButton(),
      child: child,
    );
  }

  BoxDecoration backgroundButton() {
    return BoxDecoration(
      color: color,
      borderRadius: borderRadius ?? AppBorderRadius.ss,
      boxShadow: AppShadow.minimal,
    );
  }
}
