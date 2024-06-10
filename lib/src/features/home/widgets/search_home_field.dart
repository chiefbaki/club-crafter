import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/features/widgets/custom_icon_button.dart';
import 'package:clubcrafter/src/utils/extensions/extensions.dart';
import 'package:clubcrafter/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


const double _paddingUnit = 20;

class SearchHomeField extends StatelessWidget {
  final TextEditingController controller;
  const SearchHomeField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.black,
      controller: controller,
      style: context.textTheme.bodySmall!.copyWith(color: AppColors.black),
      maxLines: 1,
      decoration: InputDecoration(
          hintText: S.of(context).search,
          hintStyle: context.textTheme.bodySmall!
              .copyWith(color: AppColors.grey.withOpacity(0.3)),
          prefixIcon: Padding(
            padding: REdgeInsets.only(left: _paddingUnit, right: 10),
            child: Icon(
              Icons.search_outlined,
              color: AppColors.grey.withOpacity(0.3),
              size: 25.h,
            ),
          ),
          suffixIcon: CIconButton(
            onPressed: () {},
          ),
          contentPadding:
              REdgeInsets.symmetric(horizontal: _paddingUnit, vertical: 14),
          enabledBorder: outlineborder(),
          focusedBorder: outlineborder()),
    );
  }

  OutlineInputBorder outlineborder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grey.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(_paddingUnit));
  }
}