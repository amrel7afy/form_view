import 'package:flutter/material.dart';
import 'package:form_view/Features/Login/presentation/view/signin_view_widgets/signin_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignInViewBody()),

    );
  }
}
