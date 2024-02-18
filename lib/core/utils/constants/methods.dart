import'package:flutter/material.dart';


double getHeight(context) {
  return MediaQuery.of(context).size.height;
}
double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

void navigateTo(widgetId,context) {
    Navigator.pushNamed(context, widgetId);

}


