import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/util/constants.dart';
import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/widgets/connector_line.dart';

class DevelopmentPoint extends StatefulWidget {
  final Technology technology;

  const DevelopmentPoint({
    required this.technology,
    Key? key,
  }) : super(key: key);

  @override
  _DevelopmentPointState createState() => _DevelopmentPointState();
}

class _DevelopmentPointState extends State<DevelopmentPoint>
    with TickerProviderStateMixin {
  bool _isExpanded = false;
  final double _connectorLength = 60;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      upperBound: 125,
      lowerBound: 95,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleExpansion() {
    if (_isExpanded) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    _isExpanded = !_isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleExpansion,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(widget.technology.shortDescription),
              SizedBox(width: _connectorLength),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              AnimatedBuilder(
                builder: (context, child) {
                  return IconTheme(
                    data: IconThemeData(
                      size: _controller.value - 7,
                    ),
                    child: Container(
                      height: _controller.value,
                      width: _controller.value,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: child,
                    ),
                  );
                },
                animation: _controller,
                child: Center(
                  child: Icon(
                    categoryData[widget.technology.category]?.icon,
                  ),
                ),
              ),
              ConnectorLine(_connectorLength),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(widget.technology.date.year.toString()),
              SizedBox(width: _connectorLength),
            ],
          ),
        ],
      ),
    );
  }
}
