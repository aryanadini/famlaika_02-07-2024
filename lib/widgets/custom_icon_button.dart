import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
   CustomIconButton({Key? key,
     this.alignment,
     this.height,
     this.width,
     this.padding,
     this.decoration,
     this.child,
     this.onTap}):
     super(key:key,);
   final Alignment? alignment;
   final double? height;
   final double? width;
   final EdgeInsetsGeometry? padding;
   final BoxDecoration? decoration;
   final Widget? child;
   final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return alignment !=null? Align(
      alignment: alignment ?? Alignment.center,
      child: iconButtonWidget) :iconButtonWidget;

  }
  Widget get iconButtonWidget => SizedBox(
    height: height ?? 0,
    width: width ?? 0,
    child: IconButton(
      padding: EdgeInsets.zero,
      onPressed: onTap, icon: Container(
      height: height ?? 0,
      width: width ?? 0,
      padding: padding?? EdgeInsets.zero,
      decoration: decoration ??
      BoxDecoration(
        color: Color(0xFF383838),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          bottomLeft: Radius.circular(34),
          bottomRight: Radius.circular(34)
        ),
        border: Border.all(
          color: Color(0xFF383838),
          width: 1
        )
      ),
      child: child,

    ),

    ),
  );
}
