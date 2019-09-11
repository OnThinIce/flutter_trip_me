import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

///模板页
class CachedImage extends StatelessWidget {
  final AlignmentGeometry alignment;
  final BoxFit fit;
  final String imageUrl;
  final double width;
  final double height;
  final bool inSizedBox;

  const CachedImage(
      {Key key,
      this.alignment: Alignment.center,
      this.fit,
      @required this.imageUrl,
      this.width,
      this.height,
      this.inSizedBox = false})
      : assert(imageUrl != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return inSizedBox
        ? FractionallySizedBox(
            widthFactor: 1,
            child: CachedNetworkImage(
              alignment: alignment,
              fit: fit,
              imageUrl: imageUrl,
              width: width,
              height: height,
            ),
          )
        : CachedNetworkImage(
            alignment: alignment,
            fit: fit,
            imageUrl: imageUrl,
            width: width,
            height: height,
          );
  }
}
