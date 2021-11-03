import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/index.dart';
import 'package:search_movie/app/theme/index.dart';

import './cards_list.dart';
import './search.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exitApp(context),
      child: Container(
        color: BrandingColors.darkGray,
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Search(),
            CardsList(),
          ],
        ),
      ),
    );
  }
}
