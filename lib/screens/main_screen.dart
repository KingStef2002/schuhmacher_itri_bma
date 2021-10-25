import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/widgets/connector_line.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';
import 'package:zoom_widget/init_configuration.dart';
import 'package:zoom_widget/zoom_widget.dart';

class MainScreen extends StatefulWidget {
  static const route = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMA Schuhmacher Itri'),
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Zoom(
            maxZoomWidth: 10000,
            maxZoomHeight: 800,
            initConfiguration: const InitConfiguration(initPositionY: 400),
            enableScrollbarHeight: false,
            centerOnScale: true,
            canvasColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            zoomSensibility: 1,
            child: Container(
              color: Colors.red,
              height: 50,
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
