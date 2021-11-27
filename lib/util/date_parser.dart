import 'package:intl/intl.dart';

/// A helper class that parses dates from the XML data file
/// into usable DateTime objects.
abstract class DateParser {
  /// A helper function that parses dates from the XML data file
  /// into usable DateTime objects.
  static DateTime parseDate(String string) {
    try {
      return _timeFormat.parse(string);
    } catch (_) {
      try {
        return _dayFormat.parse(string);
      } catch (e) {
        print('DateParser error for $string: $e');
        return DateTime.now();
      }
    }
  }

  /// This format is used for the first attempt,
  /// trying to include the time as well as the date.
  static final DateFormat _timeFormat = DateFormat('m:H dd.mm.yyyy');

  /// This format is used for the second attempt,
  /// including only the date.
  static final DateFormat _dayFormat = DateFormat('dd.mm.yyyy');
}
