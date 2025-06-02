import 'package:flutter/material.dart';
import 'package:to_nikah_app/core/helper/size_config.dart';

import 'core/helper/constants.dart';
import 'core/helper/helper.dart';
import 'core/helper/page_routes.dart';
import 'core/helper/theme_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp.router(
      title: kAppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.lightTheme(),
      routerConfig: kGoRouter,//Helper.isWeb(context) ? kWebRouter : kGoRouter,
    );
  }
}

