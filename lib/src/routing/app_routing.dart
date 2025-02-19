import 'package:flutter/material.dart';
import 'package:flutter_kit_pro/src/app.dart';
import 'package:flutter_kit_pro/src/common/widgets/error_page.dart';
import 'package:flutter_kit_pro/src/features/authentication/presentation/screens/login_scree.dart';
import 'package:flutter_kit_pro/src/features/authentication/presentation/screens/register_screen.dart';
import 'package:flutter_kit_pro/src/features/home/presentation/screen/home_page.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const FlutterKitProApp();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          path: 'register', 
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterScreen();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const ErrorPage(),
  redirect: (BuildContext context, GoRouterState state) {

    return null;
  },
);


