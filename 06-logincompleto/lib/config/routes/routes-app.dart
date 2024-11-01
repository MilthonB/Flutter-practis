import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logincompleto/presentation/screens/login-screen.dart';
import 'package:logincompleto/presentation/screens/register-screen.dart';
import 'package:logincompleto/presentation/screens/security-checkout-screen.dart';
import 'package:logincompleto/presentation/screens/welcome-screen.dart';

final appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const WelcomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var curve = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            );
            var delayedAnimation = Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset.zero,
            ).animate(curve);
            return SlideTransition(
              position: delayedAnimation,
              child: child,
            );
            // const begin = Offset(1.0, 0.0);
            // const end = Offset.zero;
            // const curve = Curves.easeIn;

            // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            // var offsetAnimation = animation.drive(tween);

            // return SlideTransition(
            //   position: offsetAnimation,
            //   child: child,
            // );
          },
        );
      },
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const RegisterScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/securitycheckout',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SecurityCheckoutScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
  ],
);
