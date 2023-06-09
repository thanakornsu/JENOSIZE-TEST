import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CircularLoadingWidget extends StatelessWidget {
  const CircularLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
