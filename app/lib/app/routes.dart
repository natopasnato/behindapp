import 'package:flutter/material.dart';
import '../features/auth/screens/login_screen.dart';
import '../features/auth/screens/auth_choice_screen.dart';
import '../features/auth/screens/sign_in_screen.dart';
import '../features/auth/screens/sign_up_screen.dart';
import '../features/attendance/screens/dashboard_screen.dart';
import '../features/attendance/screens/history_screen.dart';
import '../features/penalty/screens/penalty_screen.dart';
import '../shared/widgets/error_screen.dart';

class Routes {
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String history = '/history';
  static const String penalty = '/penalty';
  static const String authChoice = '/auth-choice';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
      case authChoice:
        return MaterialPageRoute(
          builder: (_) => const AuthChoiceScreen(),
          settings: settings,
        );
      case signIn:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
          settings: settings,
        );
      case signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
          settings: settings,
        );
      case dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
          settings: settings,
        );
      case history:
        return MaterialPageRoute(
          builder: (_) => const HistoryScreen(),
          settings: settings,
        );
      case penalty:
        return MaterialPageRoute(
          builder: (_) => const PenaltyScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
          settings: settings,
        );
    }
  }
}
