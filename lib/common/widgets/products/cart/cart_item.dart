import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandBrandTitleVerifiedIcon(title: 'Nike'),
              const Flexible(child: TProductTitleText(title: 'Black Sports Shoes', maxlines: 1)),
              Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: ' Green ', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary)),
                      TextSpan(text: ' Size ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: ' UK 38', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary)),
                    ],
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}