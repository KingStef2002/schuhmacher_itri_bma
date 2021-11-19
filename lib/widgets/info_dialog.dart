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
        Builder(builder: (context) {
          final width = MediaQuery.of(context).size.width;

          return SizedBox(
            width: width,
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
                Text(technology.longDescription),
              ],
            ),
          );
        }),
      ],
    );
  }
}
