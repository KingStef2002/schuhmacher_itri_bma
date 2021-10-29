import 'package:flutter/material.dart';

// TODO: Finish the help screen
class HelpScreen extends StatelessWidget {
  static const route = '/help';

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
