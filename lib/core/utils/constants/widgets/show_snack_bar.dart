import 'package:flutter/material.dart';
import 'package:form_view/core/utils/constants/my_colors.dart';

import '../my_text_styles.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(BuildContext context,
    String e ){

  return   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      content: Container(
        height: 40,
        alignment: Alignment.center,

        decoration: BoxDecoration(
            color: MyColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Text(e,style: MyTextStyles.boldTextStyle20.copyWith(color: Colors.white,fontSize: 15),),
      ),),);
}