import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/util/constants.dart';
import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/widgets/connector_line.dart';
import 'package:speech_bubble/speech_bubble.dart';

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
  static const double _connectorLength = 60;
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

  void _toggleExpansion() {
    if (_isExpanded) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _isExpanded
                    ? GestureDetector(
                        onTap: () {
                          // TODO: Dialog with more information
                          showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                              title: Text(widget.technology.shortDescription),
                            ),
                          );
                        },
                        child: AnimatedBuilder(
                          animation: _controller,
                          builder: (context, child) {
                            return SpeechBubble(
                              padding: const EdgeInsets.all(10),
                              height: double.infinity,
                              width: _controller.value,
                              color: const Color(0xFF9E9E9E),
                              borderRadius: 10,
                              child: Text(widget.technology.longDescription),
                            );
                          },
                        ),
                      ) // TODO: Fix animation
                    : SizedBox(
                        width: _controller.lowerBound,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            widget.technology.shortDescription,
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                const SizedBox(width: _connectorLength),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              AnimatedBuilder(
                builder: (context, child) {
                  return IconTheme(
                    data: IconThemeData(
                      size: _controller.value - 16,
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
                        borderRadius: const BorderRadius.all(
                          Radius.circular(500),
                        ),
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
              const ConnectorLine(_connectorLength),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                widget.technology.date.year.toString(),
              ),
              const SizedBox(width: _connectorLength),
            ],
          ),
        ],
      ),
    );
  }
}
