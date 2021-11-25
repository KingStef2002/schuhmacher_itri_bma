import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/screens/about_screen.dart';
import 'package:schuhmacher_itri_bma/screens/help_screen.dart';
import 'package:schuhmacher_itri_bma/screens/main_screen.dart';

/// The central point of the app, this widget contains everything.
class App extends StatelessWidget {
  /// The central point of the app, this widget contains everything.
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      routes: {
        MainScreen.route: (context) => const MainScreen(),
        HelpScreen.route: (context) => const HelpScreen(),
        AboutScreen.route: (context) => const AboutScreen(),
      },
    );
  }
}
