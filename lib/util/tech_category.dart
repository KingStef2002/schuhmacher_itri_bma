import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/screens/main_screen.dart';

import 'package:schuhmacher_itri_bma/util/enums.dart';
import 'package:schuhmacher_itri_bma/util/constants.dart';
import 'package:schuhmacher_itri_bma/widgets/info_dialog.dart';

/// The data for a single [TechCategory] value,
/// linked to the enum in [categoryData].
///
/// The data contained in this class is used to show information to the user.
class TechCategoryData {
  /// The icon used to differentiate the category on the timeline in [MainScreen].
  final IconData icon;

  /// The name of the category, shown in the [InfoDialog].
  final String name;
  final String description;

  /// The data for a single [TechCategory] value,
  /// linked to the enum in [categoryData].
  ///
  /// The data contained in this class is used to show information to the user.
  const TechCategoryData({
    required this.icon,
    required this.name,
    required this.description,
  });
}
