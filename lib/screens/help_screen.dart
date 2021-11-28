import 'package:flutter/material.dart';

import 'package:schuhmacher_itri_bma/screens/main_screen.dart';

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
      body: const SafeArea(
        child: RawScrollbar(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Der Zeitstrahl der technologischen Entwicklungen kann durch normale Zoom- und Wischgesten vergrössert/verkleinert und verschoben werden. '
                  'Jeder Kreis stellt eine Entwicklung dar. Durch das Antippen einer Entwicklung wird diese ausgewählt, wodurch sie grösser wird und eine Informationsblase erhält. '
                  'Durch das erneute Tippen des Kreises wird die Entwicklung wieder abgewählt. Es können unlimitiert viele Entwicklungen ausgewählt werden. '
                  'Das Antippen der Infoblase öffnet einen Informationsdialog, welcher durch einfaches Tippen ausserhalb der Grenzen des Dialogs wieder geschlossen werden kann.'
                  '\n\nDie Appbar stellt weitere Hilfsfunktionen in Form von Knöpfen mit Icons zur Verfügung. '
                  'Der kreisförmige Pfeil stellt den Hauptbildschirm wieder her, was besonders hilfreich ist wenn ungünstige Zoomgesten den Zeitstrahl ausserhalb der Mitte geschoben haben. '
                  'Das Fragezeichen zeigt diesen Hilfetext an. '
                  'Das Informationszeichen zeigt einen Bildschirm mit generellen Informationen über die App an.',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
