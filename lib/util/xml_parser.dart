import 'package:flutter/services.dart';
import 'package:schuhmacher_itri_bma/util/date_parser.dart';

import 'package:xml/xml.dart';

import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/util/enums.dart';

/// A helper class that parses the data from the asset XML file into
/// usable [Technology] objects, using [parseXml] and storing them in [_techList].
///
/// The data gets only parsed once during the startup of the app,
/// any further calls to [parseXml] will simply return [_techList].
abstract class XmlParser {
  static final List<Technology> _techList = [];

  /// The function used to parse the XML asset file into usable [Technology] objects.
  ///
  /// Only the first call will actually parse the data and store it in
  /// [_techList], any further calls will simply return [_techList] as-is.
  static Future<List<Technology>> parseXml() async {
    if (_techList.isEmpty) {
      final file = await rootBundle.loadString('assets/Technologies.xml');
      final XmlDocument document = XmlDocument.parse(file);

      for (XmlElement record in document.rootElement.childElements) {
        late final TechCategory category;

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
              shortDescription: record.getElement('name')?.innerText ??
                  record.getElement('shortDescription')!.innerText,
              longDescription: record.getElement('description')!.innerText,
              // TODO: Set fallback default image
              imageFileName: record.getElement('imagePath')?.innerText ?? '',
              date: DateParser.parseDate(
                record.getElement('date')?.innerText ?? '',
              ),
              datePrecision: int.parse(
                record.getElement('datePrecision')?.innerText ?? '0',
              ),
              sources: record.getElement('sources')?.innerText ?? '',
            ),
          );
        } catch (e) {
          print(
            'XML Parser exception for technology "${record.getElement('name')?.innerText ?? record.getElement('shortDescription')?.innerText ?? '[unknown name]'}": $e',
          );
        }
      }
    }

    return _techList;
  }
}
