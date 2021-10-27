import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/util/enums.dart';
import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';
import 'package:zoom_widget/zoom_widget.dart';

class MainScreen extends StatefulWidget {
  static const route = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMA Schuhmacher Itri'),
        toolbarHeight: 40,
      ),
      body: SafeArea(
        // TODO: Ensure that the viewport always centers on the middle
        // TODO: Fix issue with first time load not centering
        child: Zoom(
          //zoomEnabled: false,
          maxZoomWidth: 10000,
          maxZoomHeight: 800,
          initConfiguration: const InitConfiguration(initPositionY: 400),
          enableScrollBarHeight: false,
          centerOnScale: false,
          colorScrollBars: Colors.white,
          canvasColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          zoomSensibility: 1,
          scrollBarRadius: 3,
          // onPositionUpdate: (offset) {
          //   print('Offset: ${offset.toString()}');
          // },
          // onScaleUpdate: (scale, zoom) {
          //   print('Scale: $scale, zoom: $zoom');
          // },
          child: Container(
            color: Colors.red,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  testData.length,
                  (index) => DevelopmentPoint(
                    technology: testData[index],
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

List<Technology> testData = [
  Technology(
    category: TechCategory.industry,
    name: 'Industry 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.military,
    name: 'Military 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 2',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.development,
    name: 'Development 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.military,
    name: 'Military 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 2',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.development,
    name: 'Development 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.military,
    name: 'Military 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 2',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.development,
    name: 'Development 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.military,
    name: 'Military 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 2',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.development,
    name: 'Development 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.military,
    name: 'Military 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.industry,
    name: 'Industry 2',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
  Technology(
    category: TechCategory.development,
    name: 'Development 1',
    shortDescription: 'shortDescription',
    longDescription: 'longDescription',
    imageFileName: 'imageFileName',
    date: DateTime.now(),
  ),
];
