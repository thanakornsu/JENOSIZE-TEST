import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.title = '',
    this.titleBuilder,
    this.onTap,
    this.width,
    this.height,
    this.padding,
    this.disable = false,
    this.color,
  }) : super(key: key);

  final String title;
  final Widget? titleBuilder;
  final Function()? onTap;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final bool disable;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: disable ? () {} : onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding ?? EdgeInsets.all(spaceM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: titleBuilder ??
            Text(
              title,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
      ),
    );
  }
}
