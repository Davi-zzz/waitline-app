import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home/main_page.dart';
import '../../features/login/login_page.dart';
import '../../features/onboarding/onboarding_page.dart';
import '../../features/splash/splash_page.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');


final routes = [
  GetPage(
    name: '/',
    page: () => const SplashPage(),
    transition: Transition.circularReveal
  ),
  GetPage(
    name: '/onboarding',
    page: () => const OnboardingPage(),
    transition: Transition.circularReveal
  ),
  GetPage(
    name: '/login',
    page: () => const LoginPage(),
    transition: Transition.fade
  ),
  GetPage(
    name: '/main',
    page: () => const MainPage(),
    transition: Transition.zoom
  ),
];