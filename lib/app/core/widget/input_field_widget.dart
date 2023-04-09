import 'package:app_jenosize/app/core/extension/container.dart';
import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/utils/space.dart';
import 'package:app_jenosize/app/data/enum/content_padding.dart';
import 'package:app_jenosize/app/data/enum/input_border_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:textless/textless.dart';

class InputFieldWidget extends StatelessWidget {
  final bool isShowTitle;
  final String name;
  final String? initialValue;
  final String? placeholder;
  final bool isRequired;
  final Widget? prefix;
  final Widget? suffix;
  final bool showCursor;
  final bool enabled;
  final bool readOnly;
  final TextStyle? style;
  final bool filled;
  final Color? fillColor;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final InputBorderStyle border;
  final Color borderColor;
  final Color focusedBorder;
  final ContentPadding contentPadding;
  final String? hintText;
  final TextStyle hintStyle;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool autofocus;
  final FocusNode? focusNode;
  final Function(String?)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String?>? onChanged;

  InputFieldWidget({
    this.isShowTitle = false,
    required this.name,
    this.isRequired = false,
    this.initialValue,
    this.placeholder,
    this.onSubmitted,
    this.border = InputBorderStyle.outline,
    this.borderColor = AppColors.black,
    this.focusedBorder = AppColors.black,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.prefix,
    this.fillColor,
    this.suffix,
    this.maxLengthEnforcement,
    this.validator,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.keyboardType,
    this.showCursor = true,
    this.hintText,
    this.hintStyle = const TextStyle(fontSize: 22.0, height: 1),
    this.maxLength,
    this.minLines = 1,
    this.maxLines = 1,
    this.autofocus = false,
    this.filled = false,
    this.inputFormatters,
    this.contentPadding = ContentPadding.normal,
    this.style,
    this.focusNode,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return isShowTitle
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  name.tr.b1,
                  if (isRequired) " *".b1.regular.color(AppColors.red),
                ],
              ),
              verticalSpaceSS,
              _formBuilderTextField(),
            ],
          )
        : _formBuilderTextField();
  }

  Widget _formBuilderTextField() {
    return FormBuilderTextField(
      initialValue: initialValue,
      name: name,
      onSubmitted: onSubmitted,
      inputFormatters: inputFormatters,
      cursorColor: AppColors.blue,
      style: _style(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: _hintStyle(),
        labelText: placeholder,
        labelStyle: _labelStyle(),
        contentPadding: _getContentPadding(),
        prefixIcon: prefix,
        filled: filled,
        fillColor: fillColor,
        suffixIcon: suffix,
        border: _getBorder(borderColor),
        focusedBorder: _getBorder(focusedBorder),
        enabledBorder: _getBorder(borderColor),
        errorBorder: _getBorder(AppColors.red),
        counterText: "",
      ),
      enabled: enabled,
      readOnly: readOnly,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      showCursor: showCursor,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      autofocus: autofocus,
      focusNode: focusNode,
      onChanged: onChanged,
    );
  }

  InputBorder _getBorder(Color color) {
    switch (border) {
      case InputBorderStyle.underline:
        return UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        );
      case InputBorderStyle.outline:
        return OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: AppBorderRadius.ss,
        );
      default:
        return InputBorder.none;
    }
  }

  EdgeInsetsGeometry _getContentPadding() {
    switch (contentPadding) {
      case ContentPadding.zero:
        return EdgeInsets.only(bottom: 2);
      case ContentPadding.normal:
        return EdgeInsets.symmetric(horizontal: spaceS, vertical: spaceS);
      case ContentPadding.area:
        return EdgeInsets.symmetric(vertical: spaceS, horizontal: spaceM);
      default:
        return EdgeInsets.symmetric(horizontal: spaceS, vertical: spaceS);
    }
  }

  TextStyle _style() {
    const subtitle2Style = TextStyle(fontSize: 22.0, height: 1);
    switch (contentPadding) {
      case ContentPadding.zero:
        if (enabled) {
          return style ?? subtitle2Style.copyWith(color: AppColors.black, height: 1);
        } else {
          return style ?? subtitle2Style.copyWith(color: AppColors.light2Gray, height: 1);
        }
      default:
        if (enabled) {
          return style ?? subtitle2Style.copyWith(color: AppColors.black, height: 1.5);
        } else {
          return style ?? subtitle2Style.copyWith(color: AppColors.light2Gray, height: 1.5);
        }
    }
  }

  TextStyle _labelStyle() {
    const body1Style = TextStyle(fontSize: 22.0, height: 1);
    switch (contentPadding) {
      case ContentPadding.zero:
        return body1Style.copyWith(color: AppColors.light2Gray, height: 1);
      default:
        return body1Style.copyWith(color: AppColors.light2Gray, height: 1.5);
    }
  }

  TextStyle _hintStyle() {
    switch (contentPadding) {
      case ContentPadding.zero:
        return hintStyle.copyWith(color: AppColors.light2Gray, height: 1);
      default:
        return hintStyle.copyWith(color: AppColors.light2Gray, height: 1.5);
    }
  }
}
