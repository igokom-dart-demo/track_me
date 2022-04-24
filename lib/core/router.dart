import 'package:go_router/go_router.dart';
import 'package:trackmys/features/home_screen/home_screen.dart';
import 'package:trackmys/features/settings_screen/settings_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Page1Screen.path,
      builder: (_, __) => const Page1Screen(),
    ),
    GoRoute(
      path: Page2Screen.path,
      builder: (_, __) => const Page2Screen(),
    ),
  ],
);
