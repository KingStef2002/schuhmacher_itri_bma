import 'package:schuhmacher_itri_bma/util/technology.dart';

/// This enum annotates the various categories which [Technology] objects can
/// be grouped into.
enum TechCategory {
  /// Technologies that cannot be grouped into any of these categories.
  none,

  /// Technologies aimed for and/or primarily used by the military.
  military,

  /// Industrial developments, such as the assembly line.
  industry,

  /// Developments in the entertainment sector.
  entertainment,

  /// Medicinal developments, both for preventing and treating.
  medicine,

  /// Developments in transportation, such as railroads.
  transportation,

  /// Energy developments, mainly power.
  energy,

  /// Developments in gathering or spreading information, such as the book press.
  information,

  /// Developments that themselves do not serve much of a purpose,
  /// but majorly contributed to or were the basis of a future development.
  development,
}
