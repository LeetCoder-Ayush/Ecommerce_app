import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddremoveButtons = true,
  });

  final bool showAddremoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
      const SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if(showAddremoveButtons) const SizedBox(height: TSizes.spaceBtwItems),
          if(showAddremoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: '150'),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwItems),
        ],
      ),
    );
  }
}