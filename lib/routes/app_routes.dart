
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/screens/login_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: LoginScreen.routeName,
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
