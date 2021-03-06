import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fr/helpers/config.dart';
import 'package:fr/helpers/widgets/cm_extended_image.dart';
import 'package:get/get.dart';
class CmCachedNetworkImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Widget placeholder;
  final bool openOnTap;

  const CmCachedNetworkImage(
      {Key? key,
      required this.url,
      this.width,
      this.height,
      this.fit,
      this.placeholder = cmCachedNetworkImagePlaceholder,
      this.openOnTap=true,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(openOnTap){
          Get.to(()=>CmExtendedImage(url: url));
        }

      },
      child: CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        width: width,
        height: height,
        placeholder: (context, url) => placeholder,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
