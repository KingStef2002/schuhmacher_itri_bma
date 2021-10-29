import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/util/enums.dart';
import 'package:schuhmacher_itri_bma/util/tech_category.dart';

const Map<TechCategory, TechCategoryData> categoryData = {
  TechCategory.development: TechCategoryData(
    icon: Icons.science,
    name: 'Entwicklung',
    description: 'Grundlagen für weitere technische Entwicklungen',
  ),
  TechCategory.military: TechCategoryData(
    icon: Icons.military_tech,
    name: 'Militär',
    description: '(Zunächst) primär militärisch verwendet',
  ),
  TechCategory.industry: TechCategoryData(
    icon: Icons.precision_manufacturing_outlined,
    name: 'Industrie',
    description: 'Industrielle Entwicklungen wie etwa das Fliessband',
  ),
  TechCategory.information: TechCategoryData(
    icon: Icons.book,
    name: 'Information',
    description:
        'Eine Entwicklung, die zur Verbreitung von Informationen beiträgt',
  ),
  TechCategory.energy: TechCategoryData(
    icon: Icons.flash_on,
    name: 'Energie',
    description: 'Energetische Entwicklungen, meist betreffend Strom',
  ),
  TechCategory.transportation: TechCategoryData(
    icon: Icons.directions_transit,
    name: 'Transport',
    description: 'Entwicklungen im Transport von Menschen und/oder Waren',
  ),
  TechCategory.medicine: TechCategoryData(
    icon: Icons.medical_services_outlined,
    name: 'Medizin',
    description: 'Entwicklungen im Gesudheitswesen, präventiv und behandelnd',
  ),
  TechCategory.entertainment: TechCategoryData(
    icon: Icons.videogame_asset,
    name: 'Unterhaltung',
    description: '(Zunächst) hauptsächlich der Unterhaltung dienend',
  ),
  TechCategory.none: TechCategoryData(
    icon: Icons.circle,
    name: 'Unkategorisiert',
    description: 'Fehler oder nicht einteilbare Aussenseiter',
  ),
};
