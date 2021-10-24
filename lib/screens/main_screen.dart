import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/widgets/connector_line.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';

class MainScreen extends StatefulWidget {
  static const route = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: RawScrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                  DevelopmentPoint(),
                  ConnectorLine(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
