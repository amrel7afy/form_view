


import 'package:flutter/material.dart';
import 'package:form_view/Features/Login/presentation/view/signin_view.dart';


class AppRouter {
static const String signINView='/';



  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signINView:
        return MaterialPageRoute(builder: (context)=>const SignInView());


    }
    return null;
  }


}
