import 'package:flutter/material.dart';

class ColorConstants {
  static final _instance = ColorConstants._internal();
  factory ColorConstants() => _instance;
  ColorConstants._internal();
  final generalColor = const Color(0xFFee403c);
}
