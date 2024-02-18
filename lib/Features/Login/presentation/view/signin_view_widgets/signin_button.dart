import 'package:flutter/material.dart';
import 'package:form_view/core/utils/constants/constants.dart';
import 'package:form_view/core/utils/constants/methods.dart';
import 'package:form_view/core/utils/constants/my_colors.dart';
import 'package:form_view/core/utils/constants/my_text_styles.dart';
import 'package:form_view/core/utils/constants/widgets/custom_button.dart';
class SignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  const SignInButton({
    super.key,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context),
      height: 55,
      child: CustomButton(
        textStyle: MyTextStyles.semiBoldTextStyle20
            .copyWith(color: Colors.white),
        text: 'SIGN IN',
        backGroundColor: MyColors.kPrimaryColor,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(kFormFieldBorderRadius),
      ),
    );
  }
}