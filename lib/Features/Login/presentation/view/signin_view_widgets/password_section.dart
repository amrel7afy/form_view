import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_view/core/utils/constants/my_colors.dart';

import 'package:form_view/core/utils/constants/my_text_styles.dart';
import 'package:form_view/core/utils/constants/widgets/default_form_field.dart';
import 'package:form_view/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class PasswordSection extends StatefulWidget {
  const PasswordSection({super.key});

  @override
  State<PasswordSection> createState() => _PasswordSectionState();
}

class _PasswordSectionState extends State<PasswordSection> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: MyTextStyles.semiBoldTextStyle16,
        ),
        const VerticalSpacer(6),
        DefaultFormField(
          validate: (value){
            if(value==null||value.isEmpty){
              return'enter your password';
            }
            if(value.length<7){
              return 'Password must be more than 7 character';
            }
            else{return null;}
          },
          hint: 'Password',
          suffixPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          obscureText: obscureText,
          suffixIcon: Icon(
            obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
            color: MyColors.kPrimaryColor,
            size: 16,
          ),
        ),
      ],
    );
  }
}
