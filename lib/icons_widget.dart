import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import 'search_controller.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: Iconsax.items.entries
              .where((entry) => entry.key.toLowerCase().contains(
                  context.watch<SearchAppController>().content.toLowerCase()))
              .map(
                (entry) => SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(entry.value),
                      Text(entry.key),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
