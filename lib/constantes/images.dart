import 'package:flutter/material.dart';

class ImageHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/${img}");
  }
}
