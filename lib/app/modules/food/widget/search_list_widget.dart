import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:app_jenosize/app/core/widget/card_widget.dart';
import 'package:app_jenosize/app/core/widget/input_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({
    this.onChanged,
    this.onClear,
  });

  final ValueChanged<String?>? onChanged;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    var formSearchKey = GlobalKey<FormBuilderState>();
    return CardWidget(
      child: FormBuilder(
        key: formSearchKey,
        child: InputFieldWidget(
          name: "search",
          textAlign: TextAlign.start,
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp(r'\s')),
          ],
          prefix: Icon(
            Icons.search,
            color: AppColors.darkGrey,
          ),
          filled: true,
          fillColor: AppColors.white,
          onChanged: onChanged,
          hintText: "ค้นหาร้านอาหาร",
          hintStyle: TextStyle(fontSize: 22.0, height: 1.4),
          suffix: IconButton(
            onPressed: () {
              formSearchKey.currentState!.reset();
              if (onClear != null) {
                onClear!();
              }
            },
            icon: Icon(
              Icons.close,
              color: AppColors.darkGrey,
            ),
          ),
        ),
      ),
    );
  }
}
