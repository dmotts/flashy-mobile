import 'package:flutter/cupertino.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'newest_item_card.dart';

/// Eng.Nour Othman(meory)*


class NewestItemsGridView extends StatelessWidget {
  const NewestItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextWidget(
          text: "newestItems",
          style: TextStyle(
              fontSize: FontSizeManager.fs17,
              color: AppColorManager.textAppColor,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: AppHeightManager.h1point8,
        ),
        DynamicHeightGridView(
          crossAxisSpacing: AppWidthManager.w3Point8,
          mainAxisSpacing: AppWidthManager.w3Point8,
          crossAxisCount: 2,
          builder: (context, index) {
            return const NewestItemCard();
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
        ),
        SizedBox(
          height: AppHeightManager.h1point8,
        ),
      ],
    );
  }
}
