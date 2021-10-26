import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/util/enums.dart';
import 'package:schuhmacher_itri_bma/util/tech_category.dart';

const Map<TechCategory, TechCategoryData> categoryData = {
  TechCategory.development: TechCategoryData(
    icon: Icons.science,
    name: 'Entwicklung',
  ),
  TechCategory.military: TechCategoryData(
    icon: Icons.military_tech,
    name: 'Militär',
  ),
  TechCategory.industry: TechCategoryData(
    icon: Icons.precision_manufacturing_outlined,
    name: 'Industrie',
  ),
};
