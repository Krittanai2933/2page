import 'package:flutter/material.dart';
import 'package:munich4182_s_application3/presentation/registration_screen/registration_screen.dart';
import 'package:munich4182_s_application3/presentation/login_screen/login_screen.dart';
import 'package:munich4182_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registrationScreen = '/registration_screen';

  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registrationScreen: (context) => RegistrationScreen(),
    loginScreen: (context) => LoginScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
