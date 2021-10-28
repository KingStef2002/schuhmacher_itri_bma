import 'package:schuhmacher_itri_bma/util/enums.dart';

class Technology {
  final TechCategory category;
  final String shortDescription;
  final String longDescription;
  final String imageFileName;
  final DateTime date;

  const Technology({
    required this.category,
    required this.shortDescription,
    required this.longDescription,
    required this.imageFileName,
    required this.date,
  });
}
