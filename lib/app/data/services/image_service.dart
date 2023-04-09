import 'dart:io';

import 'package:app_jenosize/app/core/utils/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ImageService {
  static get instead => Get.find<ImageService>();

  static void initialize() {
    Get.put(ImageService());
  }

  static Widget loadImage(
    String? url, {
    BoxFit fit = BoxFit.cover,
    Color shimmer = AppColors.darkGrey,
  }) {
    try {
      if (url == "" || url == null) {
        throw "ImageURLFailure";
      }
      return CachedNetworkImage(
        fit: fit,
        imageUrl: url,
        placeholder: (context, url) {
          return Shimmer(
            child: Container(
              color: shimmer,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return Image.asset("assets/images/lego_jenosize.png");
        },
      );
    } catch (error) {
      return Image.asset("assets/images/lego_jenosize.png");
    }
  }
}
