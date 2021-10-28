import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/index.dart';

class CardsList extends StatelessWidget {
  const CardsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [MovieCard(), MovieCard(), MovieCard(), MovieCard()],
    );
  }
}
