import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
   CustomImageView({
     this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder='assets/images/image_not_found.png'
  });
  String? imagePath;
  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder?border;


  @override
  Widget build(BuildContext context) {
    return alignment !=null
        ? Align(alignment: alignment!, child: _buildWidget())
        :_buildWidget();
  }
  Widget _buildWidget(){
    return Padding(padding: margin?? EdgeInsets.zero,
    child: InkWell(
      onTap: onTap,
      child: _buildCircleImage(),
    ),);
  }
  _buildCircleImage(){
    if (radius !=null){
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    }else{
      return _buildImageWithBorder();
    }
  }
  _buildImageWithBorder(){
    if (border !=null){
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),

      );
    }
    return SizedBox();
  }

}
