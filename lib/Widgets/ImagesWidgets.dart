import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagesWidgets {
 static circularImage({required double radius, required String imageUrl,}){
   return CircleAvatar(
     radius: radius,
     child: CachedNetworkImage(
       imageUrl: imageUrl,
       imageBuilder: (context, imageProvider) => Container(
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           image: DecorationImage(
               image: imageProvider, fit: BoxFit.cover),
         ),
       ),
       progressIndicatorBuilder: (context, url, downloadProgress) =>
           CircularProgressIndicator(value: downloadProgress.progress),
       errorWidget: (context, url, error) => Icon(Icons.error),
     ),
   );
 }
}