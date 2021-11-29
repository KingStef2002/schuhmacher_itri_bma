import 'package:flutter/services.dart';

import 'package:xml/xml.dart';

import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/util/enums.dart';
import 'package:schuhmacher_itri_bma/util/date_parser.dart';

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
            assert(() {
              print('Default category case, likely an issue');
              return true;
            }());
        }

        try {
          final String shortDescription =
              record.getElement('shortDescription')!.innerText;
          final String longDescription =
              record.getElement('description')!.innerText;

          _techList.add(
            Technology(
              category: category,
              name: record.getElement('name')!.innerText,
              shortDescription: shortDescription,
              // If the description is the placeholder text,
              // use the short description instead.
              longDescription: longDescription.toLowerCase() == 'test'
                  ? shortDescription
                  : longDescription,
              imageFileName: record.getElement('imagePath')?.innerText ??
                  'Platzhalter.png',
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
          assert(() {
            print(
              'XML Parser exception for technology "${record.getElement('name')?.innerText ?? '[unknown name]'}": $e',
            );
            return true;
          }());
        }
      }
    }

    return _techList;
  }
}
