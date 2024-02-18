import 'package:flutter/material.dart';
import 'package:form_view/core/utils/constants/constants.dart';
import 'package:form_view/core/utils/constants/my_colors.dart';
import 'package:form_view/core/utils/constants/my_text_styles.dart';

class DefaultFormField extends StatelessWidget {
  final String? hint;
  final Icon? prefixIcon;
  final TextInputType? textInputType;
  final String? Function(String?)? validate;
  final bool? obscureText;
  final Icon? suffixIcon;
  final VoidCallback? suffixPressed;
  final Function(String?)? onSubmitted;
  final Widget? label;

  const DefaultFormField({
    super.key,
    this.hint,
    this.label,
    this.suffixPressed,
    this.prefixIcon,
    this.onSubmitted,
    this.textInputType,
    this.validate,
    this.suffixIcon,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onSubmitted,
      keyboardType: textInputType ?? TextInputType.text,
      validator: validate,
      obscureText: obscureText ?? false,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        label: label,
        hintText: hint,
        hintStyle: MyTextStyles.mediumTextStyle16.copyWith(
          color: MyColors.kHintTextColor.withOpacity(0.65)
        ),
        suffixIcon:IconButton(onPressed: suffixPressed, icon: suffixIcon??const SizedBox(height: 1,width: 1,),),
        prefixIcon: prefixIcon,
        border: enabledBorder(),
        enabledBorder: enabledBorder(),
        focusedBorder: focusedBorder(),
        errorBorder: errorBorder(),
      ),
    );
  }

  OutlineInputBorder enabledBorder() {
    return  OutlineInputBorder(
      borderSide: const BorderSide(color: MyColors.kPrimaryColor),
      borderRadius: BorderRadius.circular(kFormFieldBorderRadius)
    );
  }

  OutlineInputBorder focusedBorder() {
    return  OutlineInputBorder(
      borderSide: const BorderSide(color: MyColors.kPrimaryColor),
        borderRadius: BorderRadius.circular(kFormFieldBorderRadius)
    );
  }

  OutlineInputBorder errorBorder() {
    return  OutlineInputBorder(
      borderSide: const BorderSide(color: MyColors.kErrorColor),
        borderRadius: BorderRadius.circular(kFormFieldBorderRadius)
    );
  }
}
