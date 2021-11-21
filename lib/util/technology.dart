import 'package:schuhmacher_itri_bma/util/enums.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';
import 'package:schuhmacher_itri_bma/widgets/info_dialog.dart';

/// Each object of this class represents and holds the data for a single
/// technological development.
class Technology {
  /// The category under which the development falls.
  final TechCategory category;

  /// A short description, used in the timeline overview and as
  /// title for the [InfoDialog].
  final String shortDescription;

  /// A longer description, used as the main body of the [InfoDialog]
  /// and also shown in the info bubble shown when selecting a [DevelopmentPoint].
  final String longDescription;

  /// The name of the asset image used to illustrate the development,
  /// shown in the [InfoDialog].
  final String imageFileName;

  /// The date on which the development occurred, used in the timeline overview
  /// and the [InfoDialog].
  ///
  /// [datePrecision] notates how precisely this date is known and
  /// allows the application to display it accordingly by using [getDate].
  final DateTime date;

  /// How precisely [date] is known, used to display it accordingly
  /// by using [getDate].
  ///
  /// * 0: Roughly around that year.
  /// * 1: (Most likely) in that exact year.
  /// * 2: In the provided month of that exact year.
  /// * 3: On the given day.
  /// * 4: At this hour (or even minute) of the day.
  final int datePrecision;

  /// Each object of this class represents and holds the data for a single
  /// technological development.
  const Technology({
    required this.category,
    required this.shortDescription,
    required this.longDescription,
    required this.imageFileName,
    required this.date,
    required this.datePrecision,
  });

  /// Return a string representation of the [date],
  /// based on [datePrecision].
  String getDate({bool long = true}) {
    switch (datePrecision) {
      case 0:
        return 'Um ${date.year} AD';
      case 1:
        return '${date.year} AD';
      case 2:
        return '${date.month}. ${date.year}';
      case 4:
        if (long) {
          return '${date.hour}:${date.minute} ${date.day}. ${date.month}. ${date.year}';
        } else {
          // TODO: Test if this works as intended
          continue test;
        }
      test:
      case 3:
        return '${date.day}. ${date.month}. ${date.year}';
      default:
        throw ArgumentError(
            'The technology "$shortDescription" does not have a valid datePresicion.');
    }
  }
}
