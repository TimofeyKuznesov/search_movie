import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/index.dart';
import 'package:search_movie/app/pages/index.dart';
import 'package:search_movie/app/services/movies/models/top_250_data_detail.dart';
import 'package:search_movie/app/theme/index.dart';

const moviesList = [{}, {}, {}, {}];

class CardsList extends StatelessWidget {
  final List<Top250DataDetail> cards;

  const CardsList({Key? key, required this.cards}) : super(key: key);

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
          children: <Widget>[
            ...cards.map(
              (card) => GestureDetector(
                child: MovieCard(card),
                onTap: () async {
                  final result = await Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => EditCard(card)));
                  if (null != result) {
                    showInfo(context, result);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
