import 'package:flutter/material.dart';

class DevelopmentPoint extends StatefulWidget {
  const DevelopmentPoint({Key? key}) : super(key: key);

  @override
  _DevelopmentPointState createState() => _DevelopmentPointState();
}

class _DevelopmentPointState extends State<DevelopmentPoint>
    with TickerProviderStateMixin {
  bool _isLarge = false;
  double _size = 80;

  void _updateSize() {
    setState(() {
      _isLarge = !_isLarge;
      _size = _isLarge ? 100 : 80;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateSize,
      child: Scrollbar(
        child: AnimatedSize(
          duration: const Duration(seconds: 1),
          child: Container(
            height: _size,
            width: _size,
            child: Center(
              child: Text(
                'T',
                style: TextStyle(fontSize: _size - 5),
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              border: Border.all(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
        ),
      ),
    );
  }
}
