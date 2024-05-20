import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'search_controller.dart';

class SearchFildWidget extends StatelessWidget {
  const SearchFildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        onChanged: context.read<SearchAppController>().searchIcon,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(5),
          labelText: 'Search',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
