import 'package:flutter/material.dart';

import 'package:schuhmacher_itri_bma/util/technology.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';

/// A dialog showing further information about a single [Technology].
///
/// Called from a [DevelopmentPoint] when the info bubble is pressed.
class InfoDialog extends StatelessWidget {
  /// The actual technology object containing the information
  /// shown in this dialog.
  final Technology technology;

  /// A dialog showing further information about a single [Technology].
  ///
  /// Called from a [DevelopmentPoint] when the info bubble is pressed.
  const InfoDialog({
    required this.technology,
    Key? key,
  }) : super(key: key);

  // TODO: Improve dialog
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      contentPadding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 16.0),
      title: Align(
        child: Text(technology.shortDescription),
      ),
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/Images/${technology.imageFileName}',
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    technology.getDate(long: true),
                  ),
                  const SizedBox(height: 20),
                  Text(technology.longDescription),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
