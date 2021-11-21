import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/screens/main_screen.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';

/// A line of variable length, connecting two [DevelopmentPoint]s
/// on the timeline in [MainScreen].
class ConnectorLine extends StatelessWidget {
  /// The length of the line in logical pixels.
  final double length;

  /// A line of variable length, connecting two [DevelopmentPoint]s
  /// on the timeline in [MainScreen].
  const ConnectorLine(
    this.length, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length,
      height: 3,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
