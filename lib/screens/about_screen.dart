import 'package:flutter/material.dart';

/// This screen gives simple information about the application,
/// such as who made it and for what purpose.
class AboutScreen extends StatelessWidget {
  /// The static navigation route to this screen.
  static const route = '/about';

  /// This screen gives simple information about the application,
  /// such as who made it and for what purpose.
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Complete and integrate the about screen.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Über'),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Eine BMA von G. Schuhmacher und S. Itri'),
        ),
      ),
    );
  }
}
