import 'package:flutter/material.dart';

import 'package:zoom_widget/zoom_widget.dart';
import 'package:loading_overlay/loading_overlay.dart';

import 'package:schuhmacher_itri_bma/screens/help_screen.dart';
import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/util/xml_parser.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';

class MainScreen extends StatefulWidget {
  static const route = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Technology> _techList = [];

  @override
  void initState() {
    super.initState();
    _setTechList();
  }

  Future<void> _setTechList() async {
    final List<Technology> tempList = await XmlParser.parseXml();
    setState(() {
      _techList.addAll(tempList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMA Schuhmacher Itri'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HelpScreen.route);
            },
            icon: const Icon(
              Icons.help_outline,
            ),
          ),
        ],
      ),
      body: SafeArea(
        // TODO: Ensure that the viewport always centers on the middle
        // TODO: Fix issue with first time load not centering
        child: LoadingOverlay(
          opacity: 0.8,
          color: Colors.black,
          isLoading: _techList.isEmpty,
          child: Zoom(
            maxZoomWidth: 23000,
            maxZoomHeight: 1600,
            initConfiguration: const InitConfiguration(initPositionY: 800),
            enableScrollBarHeight: false,
            centerOnScale: false,
            colorScrollBars: Colors.white,
            canvasColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            zoomSensibility: 1,
            scrollBarRadius: 3,
            doubleTapZoom: false,
            child: Container(
              color: Colors.red,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    _techList.length,
                    (index) => DevelopmentPoint(
                      technology: _techList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
