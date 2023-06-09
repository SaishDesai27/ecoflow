import 'package:Ecoflow/screens/login_redirect.dart';
import 'package:Ecoflow/screens/post_detail.dart';
import 'package:flutter/material.dart';

import '../screens/action_details.dart';
import '../screens/action_screen.dart';
import '../screens/user_badges.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/metrics_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/post_upload_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/resources_screen.dart';
import '../screens/user_actions.dart';

var appRoutes = {
  // '/': (context) => const LoginRedirect(),
  '/onboarding': (context) => const OnboardingScreen(),

  '/login': (context) => const LoginScreen(),
  '/loginredirect': (context) => const LoginRedirect(),
  '/home': (context) => const HomeScreen(),

  '/postdetail': (context) => const PostDetailsScreen(),

  '/postupload': (context) => const PostUploadScreen(),
  '/resource': (context) => const ResourcesScreen(),

  '/action': (context) => const ActionScreen(),

  // '/actiondetails': (context) => const ActionDetails(),
  '/metrics': (context) => const MetricsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/userbadges': (context) => const UserBadges(),

  '/useractions': (context) => const UserActions(),
};
