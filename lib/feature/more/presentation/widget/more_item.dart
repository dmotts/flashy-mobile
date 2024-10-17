import 'package:flutter/material.dart';
import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/icon_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/container/decorated_container.dart';
import '../../../../core/widget/text/app_text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Eng.Nour Othman(meory)*


class MoreItem extends StatelessWidget {
  const MoreItem(
      {super.key,
        required this.title,
         this.icon,
        required this.onTap});

  final String title;
  final String? icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DecoratedContainer(
        borderRadius: BorderRadius.circular(AppRadiusManager.r15),
        padding: EdgeInsets.symmetric(
            horizontal: AppWidthManager.w5, vertical: AppHeightManager.h3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextWidget(
              text: title,
              fontSize: FontSizeManager.fs15,
              fontWeight: FontWeight.w600,
            ),
            SvgPicture.asset(LanguageHelper.checkIfLTR(context: context)
                ? AppIconManager.arrowMenuRight
                : AppIconManager.arrowMenuLeft)
          ],
        ),
      ),
    );
  }
}