import 'package:flutter/material.dart';

import 'package:schuhmacher_itri_bma/screens/main_screen.dart';

// TODO: Finish the help screen
/// This screen gives the user help information,
/// helping them use the app.
///
/// For ease of access, this screen is directly available from a help icon
/// in the [AppBar] of the [MainScreen].
class HelpScreen extends StatelessWidget {
  /// The static navigation route to this screen.
  static const route = '/help';

  /// This screen gives the user help information,
  /// helping them use the app.
  ///
  /// For ease of access, this screen is directly available from a help icon
  /// in the [AppBar] of the [MainScreen].
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hilfe'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Verwende Wisch- und Ziebewegungen, um den Zeitstrahl zu navigieren.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
