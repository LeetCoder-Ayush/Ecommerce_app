import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxlines = 2,
    this.textAlign = TextAlign.left,
    this.color,
  });

  final String title;
  final bool smallSize;
  final int maxlines;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: (smallSize
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.titleSmall)
          ?.copyWith(
        color: color,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
