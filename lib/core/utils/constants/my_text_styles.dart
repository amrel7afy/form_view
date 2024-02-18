import 'package:flutter/material.dart';
import 'package:form_view/core/utils/constants/my_colors.dart';

abstract class MyTextStyles {

  static const regularTextStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: MyColors.kHintTextColor,
  );
  static const mediumTextStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: MyColors.kTextColor,
  );
  static const semiBoldTextStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: MyColors.kTextColor,
  );
  static const boldTextStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: MyColors.kTextColor,
  );

  static const mediumTextStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: MyColors.kTextColor,
  );
  static const semiBoldTextStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: MyColors.kTextColor,
  );
  static const boldTextStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: MyColors.kTextColor,
  );
}
