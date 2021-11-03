import 'package:flutter/material.dart';
import 'package:search_movie/app/theme/index.dart';

import './cards_list.dart';
import './search.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Search(),
          CardsList(),
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
      color: BrandingColors.darkGray,
      margin: const EdgeInsets.all(20),
    );
  }
}
