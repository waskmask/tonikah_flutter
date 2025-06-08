import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/edit_profile_mobile_screen.dart';

class EditProfileScreen extends StatefulWidget {
  static const String id = '/edit-profile';

  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: EditProfileMobileScreen(),
      desktop: SizedBox(),
      tablet: EditProfileMobileScreen(),
    );
  }
}
