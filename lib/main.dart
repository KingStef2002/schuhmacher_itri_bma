import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:schuhmacher_itri_bma/app.dart';

/// The programmatic start point of the application,
/// ensuring screen orientation and starting the app up.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(const App());
  });
}
