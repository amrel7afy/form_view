import 'package:flutter/material.dart';
import 'package:form_view/core/utils/constants/my_text_styles.dart';
import 'package:form_view/core/utils/constants/widgets/default_form_field.dart';
import 'package:form_view/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class StudentIDSection extends StatelessWidget {
  const StudentIDSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Student Id',
          style: MyTextStyles.semiBoldTextStyle16,
        ),
        const VerticalSpacer(6),
        DefaultFormField(
          validate: (value){
            if (value == null || value.isEmpty) {
              return 'enter your email';
            }
            if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
              return 'Please enter valid email';
            } else {
              return null;
            }
          },
          hint: 'abc@example.com',
        ),
      ],
    );
  }
}
