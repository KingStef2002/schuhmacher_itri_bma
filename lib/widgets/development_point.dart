import 'package:flutter/material.dart';

class DevelopmentPoint extends StatefulWidget {
  const DevelopmentPoint({Key? key}) : super(key: key);

  @override
  _DevelopmentPointState createState() => _DevelopmentPointState();
}

class _DevelopmentPointState extends State<DevelopmentPoint>
    with TickerProviderStateMixin {
  bool _isLarge = false;
  double _size = 20;

  void _updateSize() {
    setState(() {
      _isLarge = !_isLarge;
      _size = _isLarge ? 40 : 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateSize,
      child: AnimatedSize(
        duration: const Duration(seconds: 1),
        child: Container(
          height: _size,
          width: _size,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
