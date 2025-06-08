import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/presentation/screens/common/edit_profile_screen.dart';
import 'package:to_nikah_app/presentation/screens/common/home_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/edit_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/religious_profile_mobile_screen.dart';

import '../../presentation/screens/common/basic_profile_screen.dart';
import '../../presentation/screens/common/login_screen.dart';
import '../../presentation/screens/common/on_board_screen.dart';
import '../../presentation/screens/common/otp_screen.dart';
import '../../presentation/screens/common/register_screen.dart';
import '../../presentation/screens/common/registration_option_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter kGoRouter = GoRouter(
  navigatorKey: _shellNavigatorKey,
  routes: [
    GoRoute(
      path: OnBoardScreen.id,
      builder: (context, state) => const OnBoardScreen(),
    ),
    GoRoute(
      path: RegistrationOptionScreen.id,
      builder: (context, state) => const RegistrationOptionScreen(),
    ),
    GoRoute(
      path: RegisterScreen.id,
      builder: (context, state) {
        String type = state.extra as String;
        return RegisterScreen(type: type);
      },
    ),
    GoRoute(
      path: OtpScreen.id,
      builder: (context, state) {
        return OtpScreen();
      },
    ),
    GoRoute(
      path: LoginScreen.id,
      builder: (context, state) {
        return LoginScreen();
      },
    ),
    GoRoute(
      path: BasicProfileScreen.id,
      builder: (context, state) {
        return BasicProfileScreen();
      },
    ),
    GoRoute(
      path: CulturalProfileScreen.id,
      builder: (context, state) {
        return CulturalProfileScreen();
      },
    ),
    GoRoute(
      path: AppearanceProfileScreen.id,
      builder: (context, state) {
        return AppearanceProfileScreen();
      },
    ),
    GoRoute(
      path: RelationshipProfileScreen.id,
      builder: (context, state) {
        return RelationshipProfileScreen();
      },
    ),
    GoRoute(
      path: EducationalProfileScreen.id,
      builder: (context, state) {
        return EducationalProfileScreen();
      },
    ),
    GoRoute(
      path: ReligiousProfileScreen.id,
      builder: (context, state) {
        return ReligiousProfileScreen();
      },
    ),
    GoRoute(
      path: LifestyleProfileScreen.id,
      builder: (context, state) {
        return LifestyleProfileScreen();
      },
    ),
    GoRoute(
      path: PhotoProfileScreen.id,
      builder: (context, state) {
        return PhotoProfileScreen();
      },
    ),
    GoRoute(
      path: LocationProfileScreen.id,
      builder: (context, state) {
        return LocationProfileScreen();
      },
    ),
    GoRoute(
      path: CreatingProfileScreen.id,
      builder: (context, state) {
        return CreatingProfileScreen();
      },
    ),
    GoRoute(
      path: PreferenceProfileScreen.id,
      builder: (context, state) {
        return PreferenceProfileScreen();
      },
    ),
    //home screen
    GoRoute(
      path: HomeScreen.id,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: EditProfileScreen.id,
      builder: (context, state) {
        return EditProfileScreen();
      },
    ),
  ],
);
