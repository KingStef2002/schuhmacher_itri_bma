import 'package:flutter/material.dart';

import 'package:schuhmacher_itri_bma/util/technology.dart';

/// A dialog showing further information about a technological development.
class InfoDialog extends StatelessWidget {
  final Technology technology;

  const InfoDialog({
    required this.technology,
    Key? key,
  }) : super(key: key);

  // TODO: Improve dialog
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(technology.shortDescription),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/Images/${technology.imageFileName}',
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(technology.longDescription),
          ],
        ),
      ],
    );
  }
}
