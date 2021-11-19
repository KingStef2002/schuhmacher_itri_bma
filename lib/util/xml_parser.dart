import 'package:flutter/services.dart';

import 'package:xml/xml.dart';

import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/util/enums.dart';

abstract class XmlParser {
  static final List<Technology> _techList = [];

  static Future<List<Technology>> parseXml() async {
    if (_techList.isEmpty) {
      final file = await rootBundle.loadString('assets/test.xml');
      final XmlDocument document = XmlDocument.parse(file);

      for (XmlElement record in document.rootElement.childElements) {
        TechCategory category;

        switch (record.getElement('category')?.innerText) {
          case 'military':
            category = TechCategory.military;
            break;
          case 'entertainment':
            category = TechCategory.entertainment;
            break;
          case 'energy':
            category = TechCategory.energy;
            break;
          case 'transportation':
            category = TechCategory.transportation;
            break;
          case 'medicine':
            category = TechCategory.development;
            break;
          case 'development':
            category = TechCategory.development;
            break;
          case 'industry':
            category = TechCategory.industry;
            break;
          case 'information':
            category = TechCategory.information;
            break;
          case 'none':
            category = TechCategory.none;
            break;
          default:
            category = TechCategory.none;
            print('Default category case, likely an issue');
        }

        try {
          _techList.add(
            Technology(
              category: category,
              shortDescription:
                  record.getElement('shortDescription')!.innerText,
              longDescription: record.getElement('description')!.innerText,
              imageFileName: record.getElement('imagePath')?.innerText ?? '',
              date: DateTime(int.parse(record.getElement('year')!.innerText)),
              datePrecision: 0,
            ),
          );
        } catch (e) {
          print('Exception during parsing XML to Technologies: $e');
        }
      }
    }
    return _techList;
  }
}
