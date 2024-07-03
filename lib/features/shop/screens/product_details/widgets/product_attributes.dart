import 'package:e_commerce/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        const SizedBox(height: TSizes.spaceBtwItems),
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.lightGrey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price : ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text(
                            '\$125',
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleSmall
                                ?.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          const TProductPriceText(
                              price: '100', color: Colors.amber),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text('In Stock',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              const TProductTitleText(
                title:
                'This is the description of the product and it can up to max 4 liness.',
                smallSize: true,
                maxlines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Blue', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Indigo', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Purple', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 28', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 30', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 32', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 34', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),

      ],
    );
  }
}