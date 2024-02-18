
import 'package:flutter/material.dart';

import 'package:form_view/Features/Login/presentation/view/signin_view_widgets/password_section.dart';
import 'package:form_view/Features/Login/presentation/view/signin_view_widgets/signin_button.dart';
import 'package:form_view/Features/Login/presentation/view/signin_view_widgets/signup_action.dart';
import 'package:form_view/Features/Login/presentation/view/signin_view_widgets/student_id_section.dart';
import 'package:form_view/core/utils/constants/constants.dart';
import 'package:form_view/core/utils/constants/widgets/show_snack_bar.dart';
import 'package:form_view/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSignInPadding),
      child: Form(
        key: formKey,
        child: Center(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    const Spacer(),
                    const StudentIDSection(),
                    const VerticalSpacer(20),
                    const PasswordSection(),
                    const VerticalSpacer(30),
                    SignInButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          showSnackBar(context,'Success');
                        }
                      },
                    ),
                    const VerticalSpacer(10),
                    const SignUpAction(),
                    const Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
