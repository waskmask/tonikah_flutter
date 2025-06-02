//todo: light theme colors
import 'package:flutter/material.dart';

const kIsAppProd = false;

const kAppColor = Color(0xFFF34B6F);
const kAppBarColor = Color(0xFFF34B6F); //####ffba01
const kScaffoldColor = Colors.white;
const kTextColor = Color(0xFF070707); //Color(0xFFeeeeee); //#383049
const kSubTextColor = Color(0xFF02143F);
const kErrorColor = Color(0xFFF4643a);
const kButtonColor = Color(0xFFF45170); //#00C3A0
const kBlueColor = Color(0xFF2784FF); //#00C3A0
const kGreyColor = Color(0xff9c9c9cf); //#00C3A0
const kHintColor = Color(0xFFD3D3D3); //#00C3A0

//todo: dark theme color
const kDarkAppColor = Color(0xFF112031); //
const kDarkAppBarColor = Color(0xFF112031); //
const kDarkScaffoldColor = Color(0xFF112031); //#221F40
const kDarkTextColor = Colors.white;
const kDarkSubTextColor = Color(0xFFe3e7eb);
const kDarkErrorColor = Color(0xFFFF594D); //#
const kDarkButtonColor = Color(0xFFF45170);

Map<int, Color> kColorsMap = {
  50: Colors.blueAccent.shade100,
  100: Colors.blueAccent.shade100,
  200: Colors.blueAccent.shade200,
  300: Colors.blueAccent.shade200,
  400: Colors.blueAccent.shade400,
  500: Colors.blueAccent.shade400,
  600: Colors.blueAccent.shade400,
  700: Colors.blueAccent.shade700,
  800: Colors.blueAccent.shade700,
  900: Colors.blueAccent.shade700,
};

//font family
const kWasMaskBold= 'waskmask';

BoxDecoration pinBoxDecorationBuilder(
  Color borderColor,
  Color pinBoxColor, {
  double borderWidth = 2.0,
  double radius = 10.0,
}) {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: kAppColor),
    borderRadius: const BorderRadius.all(Radius.circular(5)),
  );
}

const kButtonGradient = LinearGradient(
  colors: [Color(0xFFFF927B), Color(0xffF45170), Color(0xffF34B6F)],
);

const kRadius5 = 5.0;

const kAppPlayStore = 'https://play.google.com/store/apps/details?id=';
const kAppIosStore =
    'https://apps.apple.com/in/mobile/here-mobile-name/here-mobile-id';

const kLogoPath = 'assets/logo';
const kImagePath = 'assets/images';
const kAnimPath = 'assets/anim';
const kIconsPath = 'assets/icons';

const kAppName = 'toNikah';
const kAppDesc = '';

const kReference =
    'Designed, Developed and Maintained by CompanyName © 2025. All Rights Reserved';
const kForgotDesc =
    "Please enter your registered Email or Mobile no. to get a OTP, If we find an account with your Email or Mobile no. you'll receive the OTP within 5 mins";

const kErrorMessage = 'Something went wrong!';

const kPayPendingMessage = 'We are awaiting confirmation on your payment';
const kPayMessage =
    'Pay now and ask the delivery boy to drop the item at doorstep.';
const kPayUpdatedMessage =
    'Your pending payment amount has been updated. Please complete the payment.';

enum PaginationEnum { more, fetched, max }

//permission message
const kLocationDenyMessage =
    'Location permission denied. Please enable location access to retrieve your address from Google Maps or use your current location.';
const kLocationPermanentDeniedMsg =
    "You have permanently denied location access. To use location-based features, please enable location permissions in your device settings.";
const kLocationGPSDisable =
    'Please enable GPS to allow the app to access your location and provide accurate services.';
const kPhotoDeniedMsg =
    "You have permanently denied photo access. To select images from the gallery, please enable photo permissions in your device settings.";
const kCameraDeniedMsg =
    "You have permanently denied camera permission. To capture an image using the camera, please enable the permission from your device settings";

//onboard text
const kOnboardA =
    'We warmly encourage individuals who are genuinely seeking a soulmate through a halal and meaningful path.\n\nUnlike other so-called Muslim apps, we do not support dating or casual friendships. toNikah.com is only for marriage.';

const kOnboardB =
    'I confirm that I am a Muslim, and my intention for joining To-nikah is solely to seek marriage through a halal and meaningful path.';
const kOnboardC =
    'I agree to respect the values of this community and uphold the';
