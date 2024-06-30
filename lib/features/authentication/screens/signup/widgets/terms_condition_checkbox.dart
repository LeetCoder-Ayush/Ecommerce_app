import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child:
            Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                  color: dark
                      ? TColors.white
                      : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? TColors.white
                      : TColors.primary,
                )),
            TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                  color: dark
                      ? TColors.white
                      : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? TColors.white
                      : TColors.primary,
                )),
          ]),
        ),
      ],
    );
  }
}