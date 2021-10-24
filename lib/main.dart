import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:schuhmacher_itri_bma/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const App());
  });
}
