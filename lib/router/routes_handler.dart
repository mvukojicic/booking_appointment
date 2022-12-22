import 'package:book_repair/router/routes.dart';
import 'package:book_repair/screens/appointment_screen/appointment_screen.dart';
import 'package:book_repair/screens/home_screen/home_screen.dart';
import 'package:book_repair/screens/login_screen.dart';
import 'package:flutter/material.dart';

NavigateTo? routeHandler(RouteSettings settings) {
  final name = settings.name;
  dynamic arguments = settings.arguments;

  switch (name) {
    case Routes.homeScreen:
      return NavigateTo(
        builder: (_) => HomeScreen(),
      );
    case Routes.loginScreen:
      return NavigateTo(
        builder: (_) => const LoginScreen(),
      );
    case Routes.appointmentScreen:
      return NavigateTo(
        builder: (_) => const AppointmentScreen(),
      );
  }
  return null;
}

class NavigateTo extends MaterialPageRoute<dynamic> {
  NavigateTo({required super.builder});

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
