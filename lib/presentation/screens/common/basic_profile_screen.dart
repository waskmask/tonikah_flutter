import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/appearance_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/creating_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/cultural_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/educational_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/lifestyle_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/location_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/photo_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/preference_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/relationship_profile_mobile_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/religious_profile_mobile_screen.dart';

import '../base_screen.dart';
import '../mobile/register/basic_profile_mobile_screen.dart';

class BasicProfileScreen extends StatelessWidget {
  static const String id = '/basic-profile';

  const BasicProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: BasicProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: BasicProfileMobileScreen(),
    );
  }
}

class CulturalProfileScreen extends StatelessWidget {
  const CulturalProfileScreen({super.key});

  static const String id = '/cultural-profile';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: CulturalProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: CulturalProfileMobileScreen(),
    );
  }
}

class AppearanceProfileScreen extends StatelessWidget {
  const AppearanceProfileScreen({super.key});

  static const String id = '/appearance-profile';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: AppearanceProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: AppearanceProfileMobileScreen(),
    );
  }
}

class RelationshipProfileScreen extends StatelessWidget {
  static const String id = '/relationship-profile';

  const RelationshipProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: RelationshipProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: RelationshipProfileMobileScreen(),
    );
  }
}

class EducationalProfileScreen extends StatelessWidget {
  const EducationalProfileScreen({super.key});

  static const String id = '/education-profile';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: EducationalProfileMobileScreen(),
      desktop: Scaffold(),
      tablet: EducationalProfileMobileScreen(),
    );
  }
}

class ReligiousProfileScreen extends StatelessWidget {
  const ReligiousProfileScreen({super.key});

  static const String id = '/religious-profile';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: ReligiousProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: ReligiousProfileMobileScreen(),
    );
  }
}

class LifestyleProfileScreen extends StatelessWidget {
  static const String id = '/lifestyle-profile';

  const LifestyleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: LifestyleProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: LifestyleProfileMobileScreen(),
    );
  }
}

class PhotoProfileScreen extends StatelessWidget {
  const PhotoProfileScreen({super.key});

  static const String id = '/photos-profile';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: PhotoProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: PhotoProfileMobileScreen(),
    );
  }
}

class LocationProfileScreen extends StatelessWidget {
  static const String id = '/location-profile';

  const LocationProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: LocationProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: LocationProfileMobileScreen(),
    );
  }
}

class CreatingProfileScreen extends StatelessWidget {
  const CreatingProfileScreen({super.key});

  static const String id = '/creator-profile';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: CreatingProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: CreatingProfileMobileScreen(),
    );
  }
}

class PreferenceProfileScreen extends StatelessWidget {

  static const String id = '/preferences-profile';

  const PreferenceProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: PreferenceProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: PreferenceProfileMobileScreen(),
    );
  }
}
