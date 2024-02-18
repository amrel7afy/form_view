import 'package:flutter/material.dart';
import 'package:form_view/core/utils/constants/my_colors.dart';
import 'package:form_view/core/utils/constants/my_text_styles.dart';

class SignUpAction extends StatelessWidget {
  const SignUpAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Opacity(
            opacity:0.6,
            child: Text('Don\'t have account?',style: MyTextStyles.regularTextStyle16,)),
        TextButton(
            style: ButtonStyle(
              padding:MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
                    (Set<MaterialState> states) {
                  return EdgeInsets.zero;
                },
              ),

              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: (){}, child: Text('Sign Up',style: MyTextStyles.mediumTextStyle16.copyWith(color: MyColors.kPrimaryColor),))
      ],
    );
  }
}