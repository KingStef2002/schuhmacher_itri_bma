import 'package:flutter/material.dart';

class DevelopmentPoint extends StatefulWidget {
  const DevelopmentPoint({Key? key}) : super(key: key);

  @override
  _DevelopmentPointState createState() => _DevelopmentPointState();
}

class _DevelopmentPointState extends State<DevelopmentPoint>
    with TickerProviderStateMixin {
  bool _isLarge = false;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      upperBound: 110,
      lowerBound: 80,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isLarge) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
        _isLarge = !_isLarge;
      },
      child: AnimatedBuilder(
        builder: (context, child) {
          return Container(
            height: _controller.value,
            width: _controller.value,
            child: Center(
              child: Text(
                'T',
                style: TextStyle(fontSize: _controller.value - 7),
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
          );
        },
        animation: _controller,
      ),
    );
  }
}
