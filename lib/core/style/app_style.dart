import 'package:flutter/widgets.dart';
import 'package:modu_3_hackathon/core/style/app_color.dart';

abstract class AppTextStyle {
  // bold
  static const TextStyle hintText = TextStyle(
    fontSize: 24,
    color: AppColor.grey1,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle body = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
}
