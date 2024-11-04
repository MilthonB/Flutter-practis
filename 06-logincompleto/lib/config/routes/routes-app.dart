import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animalSyncs/presentation/screens/agenda.screen.dart';
import 'package:animalSyncs/presentation/screens/citas.screen.dart';
import 'package:animalSyncs/presentation/screens/home.screen.dart';
import 'package:animalSyncs/presentation/screens/horarios.screen.dart';
import 'package:animalSyncs/presentation/screens/login-screen.dart';
import 'package:animalSyncs/presentation/screens/register-screen.dart';
import 'package:animalSyncs/presentation/screens/screenbuild.dart';
import 'package:animalSyncs/presentation/screens/security-checkout-screen.dart';
import 'package:animalSyncs/presentation/screens/welcome-screen.dart';

final _sectionNavigatorkey = GlobalKey<NavigatorState>();
final appRoutes = GoRouter(
   navigatorKey: _sectionNavigatorkey,
   initialLocation: '/',
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScreenBuild(navigationShell: navigationShell,);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/homepage',
              // builder: (context, state) {
              //   return const Homescreen();
              // },
              pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const Homescreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
              routes: [
                GoRoute(
                  path: 'citas',
                  name: 'citas',
                        pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const Citasscreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
                ),
              ]
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/agenda',
              name: 'agenda',
                    pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const Agendascreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
              routes: []
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/horarios',
              name: 'horarios',
                    pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const Horariosscreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
              routes: []
            )
          ]
        ),

      ],
    ),
    
    
  ],
);
