import 'package:flutter/material.dart';

class DevelopmentPoint extends StatefulWidget {
  const DevelopmentPoint({Key? key}) : super(key: key);

  @override
  _DevelopmentPointState createState() => _DevelopmentPointState();
}

class _DevelopmentPointState extends State<DevelopmentPoint> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimary,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
