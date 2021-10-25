import 'package:flutter/material.dart';

class ConnectorLine extends StatelessWidget {
  final double length;

  const ConnectorLine(
    this.length, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length,
      height: 2,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
