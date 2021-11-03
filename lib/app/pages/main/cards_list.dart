import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/index.dart';
import 'package:search_movie/app/theme/index.dart';
import 'package:search_movie/app_route.dart';

const moviesList = [{}, {}, {}, {}];

class CardsList extends StatelessWidget {
  const CardsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: BrandingColors.black,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(
            6,
            (index) => GestureDetector(
              child: const MovieCard(),
              onTap: () => Navigator.of(context).pushNamed(AppRoute.card),
            ),
          ),
        ),
      ),
    );
  }
}
