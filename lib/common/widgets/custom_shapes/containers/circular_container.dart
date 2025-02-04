import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.margin,
    this.padding = 0,
    this.backgroundColor = TColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(radius),
        color: TColors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}